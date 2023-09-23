//
//  Task_4.swift
//  sweeft acceleration assignment
//
//  Created by bacho kartsivadze on 23.09.23.
//

import Foundation


extension presenterImpl {
    
    // Wrapper
    func countWays(n: Int, steps: [Int]) -> Int {
        return countWaysRec(n: n, steps: steps) + countWaysRec(n: n-1, steps: steps)
    }
    
    
    func countWaysRec(n: Int, steps: [Int]) -> Int {
        
        // Base Cases
        if n == 0 { return 1 }
        if n < 0 || steps[steps.count-n] == 0 { return 0 }
        
        // Recursion decomposition
        return countWaysRec(n: n-1, steps: steps) + countWaysRec(n: n-2, steps: steps)
    }
    
}
