//
//  Task_5.swift
//  sweeft acceleration assignment
//
//  Created by bacho kartsivadze on 05.03.24.
//

import Foundation

extension presenterImpl {
    
    
    func minMeetingRooms(_ intervals: [[Int]]) -> Int {
            var startTimes = [Int]()
            var endTimes = [Int]()
            
            for interval in intervals {
                startTimes.append(interval[0])
                endTimes.append(interval[1])
            }
            
            startTimes.sort()
            endTimes.sort()
            
            var roomsRequired = 0
            var endIndex = 0
            
            for startTime in startTimes {
                
                if startTime >= endTimes[endIndex] {
                    endIndex += 1
                } else {
                    roomsRequired += 1
                }
            }
            
            return roomsRequired
    }
}
