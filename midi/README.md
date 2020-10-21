# Dön Midi to CV interface

## Development log

### 2020-10-20

As this is my first project where I'm using Rust to develop for STM32, I will document it quite verbosely.

To start with, I have a devkit consisting of a "Blue Pill" (STM32F103) and a Sparkfun Midi shield for Arduino.
The shield is solder jumpered to use soft serial, so pin 8 is RX ("midi in") and pin 9 is TX ("midi out").
As I only intend to use Midi In, only three pins need to be conneted to the Blue Pill: 5V, ground and
RX. RX is connected to pin 31 on the Blue Pill (RX1)

Secondly I have set up the dev environment as documented in another section below.

`cargo-generate` was recommended to start a new project based on a template, so I installed it and
created a new project in the `fw` subdirectory:

```sh
$ cargo install cargo-generate
$ cargo generate --git https://github.com/rust-embedded/cortex-m-quickstart
```

Next, I selected target in `.cargo/config`, in the `[build]` section. The STM32F103 is a Cortex M3,
so I kept the default target: `thumbv7m-none-eabi`. With this config in place, these two build commands
do the exact same thing:

```sh
$ cargo build --target thumbv7m-none-eabi
$ cargo build
```

At this stage, there's an ELF binary in `target/` subdirectory. The utilities in the `cargo-binutils`
package can be used to extract some info:

```sh
$ cargo readobj --bin midi -- --file-headers
$ cargo size --bin midi --release -- -A
$ cargo objdump --bin midi --release -- --disassemble --no-show-raw-insn --print-imm-hex
```

_Note:_ `--bin midi` inspects the default build target. I set the project name to `midi` while
running `cargo generate`.

Next step is to specify the memory configuration of the device. From the datasheet I found
that the CPU (STM32F103C8) has 20 kB RAM, starting at memory position 0x2000 0000. It also has
64 kB flash (F103C8 = 64k, F103CB = 128k), mapped from 0x0800 0000 to 0x0800 FFFF (0x0801 FFFF
for 128k devices).

The file `memory.x` is used to tell the linker about the memory mapping. At the top of
the file, I updated the `MEMORY` statement with the correct ranges:

```
MEMORY
{
  FLASH : ORIGIN = 0x08000000, LENGTH = 64K
  RAM : ORIGIN = 0x20000000, LENGTH = 20K
}
```

I updated the `main` function in `src/main.rs`:

```rust
use cortex_m_semihosting::hprintln;

#[entry]
fn main() -> ! {
    hprintln!("Hello, I'm Midi!").unwrap();
    loop {
    }
}
```

Next up: uploading and debugging using OpenOCD. An ST-link was connected to the pin
header of the "blue pill". The ST-link includes both debugging interface (data + clock)
and power (3.3V and ground).

Target was updated in `openocd.cfg`, from `target/stm32f3x.cfg` to `target/stm32f1x.cfg`.
ST-Link revision was changed to `interface/stlink-v2.cfg`. Next, I simply run the `openocd`
command and it found the pill:

```
$ openocd
Open On-Chip Debugger 0.10.0
Licensed under GNU GPL v2
For bug reports, read
        http://openocd.org/doc/doxygen/bugs.html
Info : auto-selecting first available session transport "hla_swd". To override use 'transport select <transport>'.
Info : The selected transport took over low-level target control. The results might differ compared to plain JTAG/SWD
adapter speed: 1000 kHz
adapter_nsrst_delay: 100
none separate
Info : Unable to match requested speed 1000 kHz, using 950 kHz
Info : Unable to match requested speed 1000 kHz, using 950 kHz
Info : clock speed 950 kHz
Info : STLINK v2 JTAG v29 API v2 SWIM v7 VID 0x0483 PID 0x3748
Info : using stlink api v2
Info : Target voltage: 3.161508
Info : stm32f1x.cpu: hardware has 6 breakpoints, 4 watchpoints
```

With `openocd` running in the background, `gdb` can connect to the device. I started `gdb` with the correct binary,
connected it to the OpenOCD process and flashed the program into the microcontroller:

```sh
$ arm-none-eabi-gdb -q target/thumbv7m-none-eabi/debug/midi
(gdb) target remote :3333
Remote debugging using :3333
0x00000000 in ?? ()
(gdb) load
oading section .vector_table, size 0x400 lma 0x8000000
Loading section .text, size 0x1068 lma 0x8000400
Loading section .rodata, size 0x35c lma 0x8001468
Start address 0x8000400, load size 6084
Transfer rate: 13 KB/sec, 2028 bytes/write.
(gdb)
```

The program uses _semihosting_. I'm not quite sure exactly what that means yet, but I think it
among other things is what allows the `hprintln!` macro to work. Semihosting must be enabled in gdb:

```
(gdb) monitor arm semihosting enable
semihosting is enabled
```

From this stage on, gdb can be used as usual:

```
(gdb) break main  -- break point added
(gdb) continue    -- runs until main reached
(gdb) next        -- executes the hprintln macro
```

_Note that the hprintln messages are printed to the OpenOCD process output, not in GDB!_

All the gdb setup commands above, and some more, are also included in the generated
`openocd.gdb` file. It can be automatically executed when gdb is started, like this:

```
$ arm-none-eabi-gdb -x openocd.gdb -q target/thumbv7m-none-eabi/debug/midi
```

Another alternative is to uncomment the runner in `.cargo/config` with a similar
command as the above and simply use `cargo run` to build the binary and start
a gdb session.

At this point, I've finished section 2.2 in the Rust Embedded book.
Next up: https://rust-embedded.github.io/book/start/registers.html.

### 2020-10-21

Todays goal: get basic UART communication to work.

There are crates that help using a specific boards at different levels. There are crates
for the common functionality of Cortex-M3 CPU's, and specific families of CPU's,
and higher level, more CPU-specific crates. Some boards have their own crates with
very high level functionality. I did not find any such for "blue pill". Highest
level crate I found for my hardware was `stm32f1xx-hal`.

The crate required a few dependencies to be updated:

- `cortex-m`: `0.6.0` -> `0.6.2`
- `cortex-m-rt`: `0.6.10` -> `0.6.11`

It also requires a few new dependencies:

- `embedded-hal`: `0.2.3`
- `nb`: `0.1.2`

These were all added/updated in Cargo.toml, `dependencies` category. I also needed
to add the dependency on `stm32f1xx-hal`:

```toml
[dependencies.stm32f1xx-hal]
version = "0.6.1"
features = ["rt", "stm32f103", "medium"]
```

When building I got this error:

```
= note: rust-lld: error:
  ERROR(cortex-m-rt): The interrupt vectors are missing.
  Possible solutions, from most likely to less likely:
  - Link to a svd2rust generated device crate
  - Disable the 'device' feature of cortex-m-rt to build a generic application
    (a dependency may be enabling it)
  - Supply the interrupt handlers yourself. Check the documentation for details.
```

I'm not sure what caused this, but I found the tip to remove "rt" from features
in `Cargo.toml`, and with that removed it worked again. I'm not sure what the "rt"
feature does, but decided to leave that for another day...

Here's the documentation of `stm32f1xx-hal` crate:

https://docs.rs/stm32f1xx-hal/0.7.0/stm32f1xx_hal/

The crate is an implementation of the `embedded-hal` traits, which are
documented here:

https://docs.rs/embedded-hal/0.2.4/embedded_hal/

It seems like you almost always need to do a similar basic setup. I added
this, more or less copied directly from the hal documentation:

```rust
// Get access to the device specific peripherals from the peripheral access crate
let dp = pac::Peripherals::take().unwrap();

// Take ownership over the raw flash and rcc devices and convert them into the corresponding
// HAL structs
let mut flash = dp.FLASH.constrain();
let mut rcc = dp.RCC.constrain();

// Freeze the configuration of all the clocks in the system and store the frozen frequencies in
// `clocks`
let clocks = rcc.cfgr.freeze(&mut flash.acr);

// Prepare the alternate function I/O registers
let mut afio = dp.AFIO.constrain(&mut rcc.apb2);
```

Next, from the `stdm32f1xx_hal::serial` documentation, I copied the next block,
with some minor adjustments:

```rust
// GPIO port A
let mut gpioa = dp.GPIOA.split(&mut rcc.apb2);

let pin_tx = gpioa.pa9.into_alternate_push_pull(&mut gpioa.crh);
let pin_rx = gpioa.pa10;

let serial = Serial::usart1(
    dp.USART1,
    (pin_tx, pin_rx),
    &mut afio.mapr,
    Config::default().baudrate(9_600.bps()),
    clocks,
    &mut rcc.apb2,
);

// Separate into tx and rx channels
let (mut tx, mut rx) = serial.split();

loop {
    // Write character to USART
    block!(tx.write(b'X')).ok();

    let received = block!(rx.read()).unwrap();
    block!(tx.write(received)).ok();
}
```

However, when running, I suddenly got no debug printouts anymore. I narrowed it down
to the `rcc.cfgr.freeze()` function call. I finally found a blue pill quickstart
project (https://github.com/TeXitoi/blue-pill-quickstart/blob/master/src/main.rs)
and it had a somewhat different clock setup:

```rust
let clocks = rcc
    .cfgr
    .use_hse(8.mhz())
    .sysclk(16.mhz())
    .freeze(&mut flash.acr);
```

Unfortunately, that did not help either. But! The quickstart gave me two hints:

I'm not familiar with the two jumpers on the blue pill yet, but I noted that in the
picture in the quickstart doc both jumpers were placed towards the USB connector.
On my pill, only the jumper closest to the reset button was in that position.
I changed it as in the image, but it still did not work: before changing the jumper,
I tried to run the quickstart which should flash the LED, but it was always off.
After changing the jumper, however, I got an error about "jtag communication failure".
The quickstart doc hinted that in that case, you can try to press the reset button
while starting openocd.

So I did, and suddenly the LED started flashing! Went back to the MIDI firmware,
and now it worked, sending debug messages even with the clock freeze enabled!

Finally, I connected a USB to UART to pin 30+31, and the device echoed all
incoming bytes! Goal of today reached!

I changed baud rate to 31250 bps and connected the MIDI shield, and characters
started coming in. However, there's a problem with the UART not being buffered.
So I immediately get buffer overrun.

## Dev environment

### Build Toolchain

The [GNU Arm Embedded Toolchain](https://developer.arm.com/tools-and-software/open-source-software/developer-tools/gnu-toolchain/gnu-rm/downloads)
is used to build the firmware. This toolchain contains C compiler, assembler and linker for the 32-bit Arm Cortex-A, Cortex-M and Cortex-R CPU families.

There are many ways to install the toochain on both MacOS and Linux. This project assumes that the tarball has been
downloaded [from here](https://developer.arm.com/tools-and-software/open-source-software/developer-tools/gnu-toolchain/gnu-rm/downloads),
extracted, and that the `bin` directory has been added to `$PATH`.

Current version as of this writing is: _9-2020-q2-update_, released June 30, 2020.

**Note for MacOS:** From Catalina, the binaries will not be able to start, as they are not verified. Use this command to fix it:

```sh
$ xattr -d com.apple.quarantine `which arm-none-eabi-gcc`
```

### Rust

Make sure you have Rust and Cargo installed with `rustup`.
Current version of `rustc` as of this writing is _1.47.0_.

Add support for Arm Cortex-M3 as target:

```sh
$ rustup target add thumbv7m-none-eabi
```

### OpenOCD

OpenOCD is used to transfer firmware to the device. On MacOS it is easiest installed using homebrew:

```sh
$ brew install openocd
```

Ubuntu using apt:

```sh
$ apt install openocd
```

Current version as of this writing: _0.10.0_

### cargo-binutils

_Not sure what these tools do yet, as I'm still learning embedded Rust!_

```sh
$ cargo install cargo-binutils
$ rustup component add llvm-tools-preview
```

## References

- [The Embedded Rust Book](https://rust-embedded.github.io/book/)
- Blog post: [STM32L0 Rust Part 1 - Getting Started](https://craigjb.com/2019/12/31/stm32l0-rust/) by Craig J Bishop
