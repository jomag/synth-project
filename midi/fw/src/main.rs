#![no_std]
#![no_main]

// pick a panicking behavior
use panic_halt as _; // you can put a breakpoint on `rust_begin_unwind` to catch panics

// use panic_abort as _; // requires nightly
// use panic_itm as _; // logs messages over ITM; requires ITM support
// use panic_semihosting as _; // logs messages to the host stderr; requires a debugger

extern crate cortex_m_semihosting;

use core::fmt::Write;
use cortex_m_rt::entry;
use cortex_m_semihosting::{hio, hprintln};
use nb::block;

use stm32f1xx_hal::{
    pac,
    prelude::*,
    serial::{Config, Error, Serial, StopBits},
};

#[entry]
fn main() -> ! {
    let mut stdout = hio::hstdout().unwrap();

    hprintln!("Hello, I'm Midi 2!").unwrap();
    write!(stdout, "{} on embedded is #{}!", "pooh", 32);

    // Get access to the device specific peripherals from the peripheral access crate
    let dp = pac::Peripherals::take().unwrap();

    // Take ownership over the raw flash and rcc devices and convert them into the corresponding
    // HAL structs
    let mut flash = dp.FLASH.constrain();
    let mut rcc = dp.RCC.constrain();

    // Freeze the configuration of all the clocks in the system and store the frozen frequencies in
    // `clocks`

    // Alt 1: from stmm32f1xx-hal
    let clocks = rcc.cfgr.freeze(&mut flash.acr);

    // Alt 2: From the "blue pill quickstart"
    // let clocks = rcc
    //     .cfgr
    //     .use_hse(8.mhz())
    //     .sysclk(16.mhz())
    //     .freeze(&mut flash.acr);

    // Prepare the alternate function I/O registers
    let mut afio = dp.AFIO.constrain(&mut rcc.apb2);

    // GPIO port A
    let mut gpioa = dp.GPIOA.split(&mut rcc.apb2);

    let pin_tx = gpioa.pa9.into_alternate_push_pull(&mut gpioa.crh);
    let pin_rx = gpioa.pa10;

    let baud = 31_250.bps();
    //let baud = 9_600.bps();

    let serial = Serial::usart1(
        dp.USART1,
        (pin_tx, pin_rx),
        &mut afio.mapr,
        Config::default()
            .baudrate(baud)
            .stopbits(StopBits::STOP1)
            .parity_none(),
        clocks,
        &mut rcc.apb2,
    );

    // Separate into tx and rx channels
    let (mut tx, mut rx) = serial.split();

    loop {
        block!(tx.write(b'X')).ok();

        // let received = block!(rx.read()).unwrap();

        let received = match block!(rx.read()) {
            Ok(r) => r,
            Err(e) => {
                match e {
                    Error::Framing => write!(stdout, "FRAMING ERROR!"),
                    Error::Noise => write!(stdout, "NOISE ERROR!"),
                    Error::Overrun => write!(stdout, "OVERRUN ERROR!"),
                    Error::Parity => write!(stdout, "PARITY ERROR!"),
                    _ => write!(stdout, "OTHER ERROO!"),
                };
                0
            }
        };

        // block!(tx.write(received)).ok();
        write!(stdout, "Received: {} #{}", received, received);
        //hprintln!(received);
    }
}
