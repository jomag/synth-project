# MIDI to CV interface

## Dev environment

### Build Toolchain

The [GNU Arm Embedded Toolchain](https://developer.arm.com/tools-and-software/open-source-software/developer-tools/gnu-toolchain/gnu-rm/downloads) is used to build the firmware. This toolchain contains C compiler, assembler and linker for the 32-bit Arm Cortex-A, Cortex-M and
Cortex-R CPU families.

There are many ways to install the toochain on both MacOS
and Linux. This project assumes that the tarball has been
downloaded [from here](https://developer.arm.com/tools-and-software/open-source-software/developer-tools/gnu-toolchain/gnu-rm/downloads), extracted, and that the `bin`
directory has been added to `$PATH`.

Current version as of this writing is: 9-2020-q2-update,
released June 30, 2020.

**Note for MacOS:** From Catalina, the binaries will not
be able to start, as they are not verified. Use this command
to fix it:

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

OpenOCD is used to transfer firmware to the device. On
MacOS it is easiest installed using homebrew:

```sh
$ brew install openocd
```

Current version as of this writing: _0.10.0_

### cargo-binutils

_Not sure what these tools do yet, as I'm still learning
embedded Rust!_

```sh
$ cargo install cargo-binutils
$ rustup component add llvm-tools
```

### cargo-generate

_Used to start a Rust project based on a template. Not
required for building the firmware._

```sh
$ cargo install cargo-generate
```

## References

- [The Embedded Rust Book](https://rust-embedded.github.io/book/)
- Blog post: [STM32L0 Rust Part 1 - Getting Started](https://craigjb.com/2019/12/31/stm32l0-rust/) by Craig J Bishop
