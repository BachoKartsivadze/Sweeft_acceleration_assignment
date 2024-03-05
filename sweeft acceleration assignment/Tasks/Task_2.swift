//
//  Task_2.swift
//  sweeft acceleration assignment
//
//  Created by bacho kartsivadze on 05.03.24.
//

import Foundation


extension presenterImpl {
    
    func minWindow(_ s: String, _ t: String) -> String {
        var tSymbols = [Character: Int]()
        var sSymbols = [Character: Int]()
        for character in t {
            tSymbols[character, default: 0] += 1
        }
        
        var indexFromLeft = 0
        var indexFromRight = 0
        var minimumCount = tSymbols.count
        var currentCount = 0
        var minimumLength = Int.max
        var minimumStart = 0
        
        while indexFromRight < s.count {
            let rightChar = s[s.index(s.startIndex, offsetBy: indexFromRight)]
            sSymbols[rightChar, default: 0] += 1
            if let tCount = tSymbols[rightChar], sSymbols[rightChar] == tCount {
                currentCount += 1
            }
            
            while currentCount == minimumCount && indexFromLeft <= indexFromRight {
                let leftChar = s[s.index(s.startIndex, offsetBy: indexFromLeft)]
                let currentLen = indexFromRight - indexFromLeft + 1
                if currentLen < minimumLength {
                    minimumLength = currentLen
                    minimumStart = indexFromLeft
                }
                sSymbols[leftChar]! -= 1
                if let tCount = tSymbols[leftChar], sSymbols[leftChar]! < tCount {
                    currentCount -= 1
                }
                indexFromLeft += 1
            }
            indexFromRight += 1
        }
        
        if minimumLength == Int.max {
            return ""
        } else {
            let substringStartIndex = s.index(s.startIndex, offsetBy: minimumStart)
            let substringEndIndex = s.index(substringStartIndex, offsetBy: minimumLength)
            let substring = s[substringStartIndex..<substringEndIndex]
            return String(substring)
        }
    }
}
