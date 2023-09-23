//
//  Task_2.swift
//  sweeft acceleration assignment
//
//  Created by bacho kartsivadze on 23.09.23.
//

import Foundation


extension presenterImpl {
    
    func sumOfDigits(start: Int, end: Int) -> Int {
        var result = 0
        for num in start...end {
            result += innerSumOfNumber(number: num)
        }
        return result
    }
    
    
    private func innerSumOfNumber(number: Int) -> Int {
        var result = 0
        var num = number // because number in 'let'
        
        while num > 0 {
            result += num % 10
            num /= 10
        }
        
        return result
    }
}
