//
//  Task_3.swift
//  sweeft acceleration assignment
//
//  Created by bacho kartsivadze on 05.03.24.
//

import Foundation

extension presenterImpl {
    
    
    func wordBreak(_ s: String, _ words: [String]) -> Bool {
        var wordsSet = Set(words)
        
        var boolArray = Array(repeating: false, count: s.count + 1)
        
        boolArray[0] = true
        
        for i in 1...s.count {
            for j in 0..<i {
                let substring = String(s.prefix(i).suffix(i - j))
                
                if boolArray[j] && wordsSet.contains(substring) {
                    boolArray[i] = true
                    break
                }
            }
        }
        return boolArray[s.count]
    }
    
}
