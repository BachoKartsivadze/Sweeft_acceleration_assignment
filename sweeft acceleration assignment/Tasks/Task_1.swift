//
//  Task_1.swift
//  sweeft acceleration assignment
//
//  Created by bacho kartsivadze on 22.09.23.
//

import Foundation


protocol presenter: AnyObject {
    func minSplit(amount: Int) -> Int
    func sumOfDigits(start: Int, end: Int) -> Int
    func isProperly(sequence: String) -> Bool
    func countWays(n: Int, steps: [Int]) -> Int
    func zeros(N: Int) -> Int
}


class presenterImpl: presenter {
    
    func minSplit(amount: Int) -> Int {
        var leftAmount = amount
        var splitCount = 0
        
        let coins = [50,20,10,5,1]
        
        for coin in coins {
            while leftAmount > coin-1 {
                leftAmount -= coin
                splitCount += 1
            }
        }
        
        return splitCount
    }
    
    
    
    /// MARK: Below is a solution with recursion, which also works for harder cases of similar problem, but is slower.
    
    // wrapper
    func minSplit_2(amount: Int) -> Int {
        return minSplitRec(amount: amount, recursionCount: 0)
    }

    
    func minSplitRec(amount: Int, recursionCount: Int) -> Int {
        // base cases
        if amount < 0 { return Int(INT_MAX) }
        if amount == 0 { return recursionCount }
        
        // recursion
        return min(minSplitRec(amount: amount-50, recursionCount: recursionCount+1),
                   minSplitRec(amount: amount-20, recursionCount: recursionCount+1),
                   minSplitRec(amount: amount-10, recursionCount: recursionCount+1),
                   minSplitRec(amount: amount-5, recursionCount: recursionCount+1),
                   minSplitRec(amount: amount-1, recursionCount: recursionCount+1))
        }
    
    
}
