//
//  Task_5.swift
//  sweeft acceleration assignment
//
//  Created by bacho kartsivadze on 23.09.23.
//

import Foundation
/**
 
 10  is  5 X 2
 '2'- s is always more than '5'-s
 so it is enought to count '5'-s in our number
 
 */
extension presenterImpl {
    
    
    func zeros(N: Int) -> Int {
        var result = 0
        for num in 1...N {
            result += fivesInNumber(number: num)
        }
        return result
    }
    
    
    private func fivesInNumber(number: Int) -> Int {
        var num = number
        var result = 0
        while num % 5 == 0 && num != 0 {
            result += 1
            num /= 5
        }
        return result
    }
}
