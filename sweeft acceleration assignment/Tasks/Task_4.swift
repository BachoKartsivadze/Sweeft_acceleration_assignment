//
//  Task_4.swift
//  sweeft acceleration assignment
//
//  Created by bacho kartsivadze on 05.03.24.
//

import Foundation


extension presenterImpl {
    
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var numbersFreq = [Int: Int]()
        for num in nums {
            numbersFreq[num, default: 0] += 1
        }
        
        var buckets = Array(repeating: [Int](), count: nums.count + 1)
        
        for (num, freq) in numbersFreq {
            buckets[freq].append(num)
        }
        
        var result = [Int]()
        for bucket in buckets.reversed() {
            for num in bucket {
                result.append(num)
                if result.count == k {
                    return result
                }
            }
        }
        
        return result
    }
    
}
