//
//  ViewController.swift
//  sweeft acceleration assignment
//
//  Created by bacho kartsivadze on 05.03.24.
//

import UIKit

class ViewController: UIViewController {
    
    private var presenter: presenter!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        task_1_tests()
        task_2_tests()
        task_3_tests()
        task_4_tests()
        task_5_tests()
    }

    
    init(presenter: presenter) {
        super.init(nibName: nil, bundle: nil)
        self.presenter = presenter
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


/// MARK:  Tests
extension ViewController {
    
    private func task_1_tests() {
        print("\nTask 1")
        print("test 1:  '\(presenter.lengthOfLongestSubstring("abcabcbb"))'")
        print("test 2:  '\(presenter.lengthOfLongestSubstring("bbbbb"))'")
    }
    
    private func task_2_tests() {
        print("\nTask 2")
        print("test 1:  \(presenter.minWindow("ADOBECODEBANC", "ABC"))")
        print("test 2:  \(presenter.minWindow("a", "aa"))")
    }
    
    private func task_3_tests() {
        print("\nTask 3")
        print("test 1: \(presenter.wordBreak("leetcode", ["leet", "code"]))")
        print("test 1: \(presenter.wordBreak("applepenapple", ["apple", "pen"]))")
    }
    
    private func task_4_tests() {
        print("\nTask 4")
        print("test 1: '\(presenter.topKFrequent( [1,1,1,2,2,3], 2))'")
        print("test 2: '\(presenter.topKFrequent([1], 1))'")
    }
    
    private func task_5_tests() {
        print("\nTask 5")
        print("test 1:  '\(presenter.minMeetingRooms([[0, 30],[5, 10],[15, 20]]))'")
        print("test 2:  '\(presenter.minMeetingRooms([[7,10],[2,4]]))'")
    }
    
}


