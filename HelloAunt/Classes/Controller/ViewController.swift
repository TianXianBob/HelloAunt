//
//  ViewController.swift
//  HelloAunt
//
//  Created by bob on 2018/7/1.
//  Copyright © 2018年 bob. All rights reserved.
//

import UIKit
import ReactiveCocoa

enum Rank: Int {
    case Ace = 1
    case Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten
    case Jack, Queen, King
    func simpleDesc() -> String {
        switch self {
        case .Ace:
            return "ace"
        default:
            return String(self.rawValue)//rawValue来访问枚举的原始值
        }
    }
}


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print(sumof(1,2,3,4))
        
        
        
        let a = getMax_Min_Sum(scores: [1,2,3,4,4,5])
        print(a.sum)
        print(a.max)
        print(a.2)
        
        
        var increment = makeIncrementer()
        print(increment(7))
        
        let boolValue = hasAnyMatches(list: [1,23,3], condition: lessThanTen)
        print(boolValue)
        
        let numbers = [3,2,3,3,3,4,8,6,7,8,24]
        numbers.sorted()
        print(numbers)
        
        let numberExtension = NumbersExtension()
        let bValue = numberExtension.sorted{$0 > $1}
        print(bValue)
        
        
        let ace = Rank.Ace
        let rowValue = ace.rawValue
        let row = ace.simpleDesc()
        print(ace,rowValue,row)
        
        
        print(BobTestPch)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func sumof(_ numbers:Int...)->Int {
        var sum = 0
        for number in numbers {
            sum += number
        }
        return sum
    }
    
    func getMax_Min_Sum(scores:[Int]) -> (min: Int, max: Int, sum: Int) {
        var min = scores[0]
        var max = scores[0]
        var sum = 0
        
        for score in scores {
            if score > max {
                max = score
            } else if score < min {
                min = score
            }
            sum += score
        }
        
        return (min,max,sum)
    }
    
    
    func returnSomething() -> Int {
        var y = 10
        func add() {
            y += 5
        }
        add ()
        return y
    }
    
    func makeIncrementer() -> ((Int) -> Int) {
        func addOne(number: Int) -> Int {
            return 1 + number
        }
        return addOne
    }
    
    func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
        for item in list {
            if condition(item) {
                return true
            }
        }
        return false
    }
    
    func lessThanTen(number: Int) -> Bool {
        return number < 10
    }

}

