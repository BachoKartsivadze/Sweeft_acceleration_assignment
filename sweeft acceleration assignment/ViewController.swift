//
//  ViewController.swift
//  sweeft acceleration assignment
//
//  Created by bacho kartsivadze on 22.09.23.
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
///
extension ViewController {
    
    private func task_1_tests() {
        print("\nTask 1")
        print("test 1:  '\(presenter.minSplit(amount: 9))'")
        print("test 2:  '\(presenter.minSplit(amount: 26))'")
        print("test 3:  '\(presenter.minSplit(amount: 172))'")
    }
    
    private func task_2_tests() {
        print("\nTask 2")
        print("test 1:  \(presenter.sumOfDigits(start: 7, end: 8))")
        print("test 2:  \(presenter.sumOfDigits(start: 17, end: 20))")
        print("test 3:  \(presenter.sumOfDigits(start: 10, end: 12))")
    }
    
    private func task_3_tests() {
        print("\nTask 3")
        print("test 1: '\(presenter.isProperly(sequence: "(()())"))'")
        print("test 2: '\(presenter.isProperly(sequence: ")(()"))'")
        print("test 3: '\(presenter.isProperly(sequence: "(()())("))'")
    }
    
    private func task_4_tests() {
        print("\nTask 4")
        print("test 1: '\(presenter.countWays(n: 3, steps: [0, 1, 0]))'")
        print("test 2: '\(presenter.countWays(n: 4, steps: [0, 1, 1, 0]))'")
        print("test 3: '\(presenter.countWays(n: 5, steps: [1, 1, 0, 1, 1]))'")
    }
    
    private func task_5_tests() {
        print("\nTask 5")
        print("test 1:  '\(presenter.zeros(N: 7))'")
        print("test 2:  '\(presenter.zeros(N: 12))'")
        print("test 3:  '\(presenter.zeros(N: 490))'")
    }
    
}


