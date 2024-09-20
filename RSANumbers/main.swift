//
//  main.swift
//  RSANumbers
//
//  Created by Russell Gordon on 2024-09-19.
//

import Foundation

func findCountOfRSANumbers(between lower: Int, and upper: Int) -> Int {
    
    // Intialize counter
    var count = 0
    
    // Loop over numbers in range
    for i in lower...upper {
        // Check whether current number is an RSA number
        let result = isRSA(number: i)
        // Do something based on result...
        if result == true {
            count += 1
        }
    }
    // Return count of RSA numbers in the range given...
    return count
}

// Tests
print("Testing findCountOfRSANumbers function...")
print(findCountOfRSANumbers(between: 10, and: 12)) // 1

func isRSA(number: Int) -> Bool {
    
    // Initialize counter
    var count = 0
    
    // Loop over possible divisors
    for j in 1...number {
        // Check whether current number is a divisor of this number
        let result = isDivisor(dividend: number, divisor: j)
        // Do something based on result...
        if result == true {
            count += 1
        }
    }
    
    // Return whether this number is an RSA number...
    if count == 2 {
        return true
    } else {
        return false
    }
    
}

// Tests
print("Testing isRSA function...")
print(isRSA(number: 10)) // true
print(isRSA(number: 11)) // false

func isDivisor(dividend: Int, divisor: Int) -> Bool {
    // Add logic to determine whether provided divisor actually
    // goes evenly into the provided dividend
    // (e.g.: remainder is zero)
 
    // Return the result...
    if dividend % divisor == 0 {
        return true
    } else {
        return false
    }
}

// Tests
print("Testing isDivisor function...")
print(isDivisor(dividend: 12, divisor: 4)) // true
print(isDivisor(dividend: 13, divisor: 4)) // false

