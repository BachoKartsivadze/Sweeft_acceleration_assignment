//
//  Task_3.swift
//  sweeft acceleration assignment
//
//  Created by bacho kartsivadze on 23.09.23.
//

import Foundation
/**
 When iterating in process number of closed brecets should be less or equal to opened brecets.
 When iterate ends they have to be equal.
 */
extension presenterImpl {
    
    
    func isProperly(sequence: String) -> Bool {
        var counter = 0
        let arrayOfCharacters = Array(sequence)
        for character in arrayOfCharacters {
            if character == "(" { counter += 1 }
            if character == ")" { counter -= 1 }
            if counter < 0 { return false }
        }
        if counter == 0 { return true }
        return false
    }
    
}
