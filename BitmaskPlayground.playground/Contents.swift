//: Playground - noun: a place where people can play

import UIKit

//
// To simplify things, we'll use a UInt8 (8-bits instead of 16, 32 or 64)
//
let eightDecimal = UInt8(8)
//
// in binary (using 8-bits), this would be represented as:
//   00001000
// 0b00001000  (in code to assign to an Int)
//
let eightBinary = UInt8(0b0001000)

if eightDecimal == eightBinary {
    print("They are the same")
}

//
// Now let's go through and look at each 8-bit possibility with a single bit toggled to "1"
//
let bit1 = 0b00000001       // 1
let bit2 = 0b00000010       // 2
let bit3 = 0b00000100       // 4
let bit4 = 0b00001000       // 8
let bit5 = 0b00010000       // 16
let bit6 = 0b00100000       // 32
let bit7 = 0b01000000       // 64
let bit8 = 0b10000000       // 128

let allBits = 0b11111111    // 255

//
// Now lets use bit-shifting to generate the integers:
//
let shift0 = 1 << 0
let shift1 = 1 << 1
let shift2 = 1 << 2
let shift3 = 1 << 3
let shift4 = 1 << 4
let shift5 = 1 << 5
let shift6 = 1 << 6
let shift7 = 1 << 7

//
// Now here is an example of how we would use a BitMask
//
struct CategoryBitmask {
    static let player = UInt8(1 << 0)   // 1
    static let spider = UInt8(1 << 1)   // 2
    static let snake = UInt8(1 << 2)    // 4
    static let spike = UInt8(1 << 3)    // 8
}

// You might use a bitmask to keep track of what enemies you want to spawn for a level
let levelEnemies = UInt8(0b00001110)


if levelEnemies & CategoryBitmask.player != 0 {
    print("Invalid bitmask, player should not be a spawned enemy")
}

//
// The Math behind the calculation at line 59 (make sure you have line numbers turned on) is the following:
//   0b00000001
// & 0b00001110
//--------------
//   0b00000000

if levelEnemies & CategoryBitmask.spider != 0 {
    print("Spawn some spiders!")
}

//
// The Math behind the calculation at line 70 (make sure you have line numbers turned on) is the following:
//   0b00000010
// & 0b00001110
//--------------
//   0b00000010  (or 2 in decimal, which is not 0)


if levelEnemies & CategoryBitmask.snake != 0 {
    print("Spawn some snakes!")
}

//
// The Math behind the calculation at line 82 (make sure you have line numbers turned on) is the following:
//   0b00000100
// & 0b00001110
//--------------
//   0b00000100  (or 4 in decimal, which is not 0)


if levelEnemies & CategoryBitmask.spike != 0 {
    print("Spawn some spikes!")
}

//
// The Math behind the calculation at line 94 (make sure you have line numbers turned on) is the following:
//   0b00001000
// & 0b00001110
//--------------
//   0b00001000  (or 8 in decimal, which is not 0)


