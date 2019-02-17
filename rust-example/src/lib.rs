extern crate js_sys;
extern crate wasm_bindgen;

use js_sys::Uint8Array;

use wasm_bindgen::prelude::*;

#[wasm_bindgen]
#[inline(never)]
pub fn load_bit(input: &[u8], index: usize) -> u8 {
    return input[index];
}

#[wasm_bindgen]
#[inline(never)]
pub fn byte_arr_to_u32(output: &[u8]) -> u32 {
    let mut sum = 0;
    for i in 0..32 {
        let bit_set = output[i] & 1 == 1;
        if bit_set {
            sum = sum + (u32::pow(2, 31 - (i as u32)));
        }
    }
    return sum;
}

#[inline]
pub fn increment_counter(input: &[u8; 4], do_increment: u8) -> [u8; 4] {
    // 4 bit counter
    let mut carry_on: u8 = 0;
    let (mut v1, mut v2, mut v3, mut v4) = (0, 0, 0, 0);
    v4 = input[3] ^ do_increment;
    carry_on = input[3] & do_increment;
    v3 = input[2] ^ carry_on;
    carry_on = input[2] & carry_on;
    v2 = input[1] ^ carry_on;
    carry_on = input[1] & carry_on;
    v1 = input[0] ^ carry_on;
    return [v1, v2, v3, v4];
}

#[wasm_bindgen]
pub fn compute(input: &[u8]) -> u32 {
    let mut counter = [0u8; 4];
    let mut res = [0u8; 32];

    let mutation1 = !load_bit(input, 1);
    let mutation2 = !load_bit(input, 4);
    let mutation3 = !load_bit(input, 8);
    let mutation4 = !load_bit(input, 13);
    let mutation5 = !load_bit(input, 17);
    let mutation6 = !load_bit(input, 21);
    let mutation7 = !load_bit(input, 26);

    counter = increment_counter(&counter, mutation1);
    counter = increment_counter(&counter, mutation2);
    counter = increment_counter(&counter, mutation3);
    counter = increment_counter(&counter, mutation4);
    counter = increment_counter(&counter, mutation5);
    counter = increment_counter(&counter, mutation6);
    counter = increment_counter(&counter, mutation7);

    res[28] = counter[0];
    res[29] = counter[1];
    res[30] = counter[2];
    res[31] = counter[3];
    return byte_arr_to_u32(&res);
}
