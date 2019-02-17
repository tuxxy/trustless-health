extern crate trustless_health;

use trustless_health::compute;

fn main() {
    println!("Hello, world!");
    println!("{}", (-2 as i32) as u32);
    println!(
        "{:?}",
        compute(&[
            0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        ])
    )
}
