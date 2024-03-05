//
//  Task_1.swift
//  sweeft acceleration assignment
//
//  Created by bacho kartsivadze on 05.03.24.
//

import Foundation


protocol presenter: AnyObject {
    func lengthOfLongestSubstring(_ s: String) -> Int
    func minWindow(_ s: String, _ t: String) -> String
    func wordBreak(_ s: String, _ words: [String]) -> Bool
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] 
    func minMeetingRooms(_ intervals: [[Int]]) -> Int
}


class presenterImpl: presenter {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var res = 0
        var currSubString = ""
        for char in s {
            if currSubString.contains(char) {
                res = max(res, currSubString.count)
                let substrings = currSubString.split(separator: char)
                if substrings.isEmpty {
                    currSubString = ""
                } else {
                    currSubString = String(substrings[substrings.count-1])
                }
            }
            currSubString = currSubString + char.description
        }
        res = max(res, currSubString.count)
        return res
    }
}
