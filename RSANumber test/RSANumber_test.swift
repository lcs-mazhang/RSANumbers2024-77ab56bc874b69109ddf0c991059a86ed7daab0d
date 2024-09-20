//
//  RSANumber_test.swift
//  RSANumber test
//
//  Created by GengYu Zhang on 2024-09-20.
//

import Testing

struct RSANumber_test {
    
    @Test(.timeLimit(.minutes(1)))
    func midRangeTest() {
        let result =
        findCountOfRSANumbers(between: 1, and: 50000)
        
        #expect (result == 5000)
    }
    
    @Test func isADivisor(){
        let result = isDivisor(dividend: 12, divisor: 4)
        
        #expect(result == true)
    }
    @Test func isNotDivisor() {
        let result = isDivisor(dividend: 13, divisor: 4)
        
        #expect(result == false)
    }
    @Test func isARSANumber() {
        let result = isRSA(number: 10)
        
        #expect (result == true)
    }
    
    @Test func isNotARSANumber() {
        let result = isRSA(number: 11)
        
        #expect (result == false)
    }
    
    @Test func countRSA() {
        let result = findCountOfRSANumbers(between: 6, and: 12)
        
        #expect (result == 3)
    }
}
