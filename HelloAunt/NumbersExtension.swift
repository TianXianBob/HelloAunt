//
//  NumbersExtension.swift
//  HelloAunt
//
//  Created by bob on 2018/7/1.
//  Copyright © 2018年 bob. All rights reserved.
//

import UIKit


class NumbersExtension: NSObject {
    var numbers = [1,2,3,4]
    var slideLength:Double = 0
    
    
    var perimeter:Double {
        get {
            return 3 * slideLength
        }
        
        
        set {
            slideLength = newValue / 3
        }
    }
    
    
    
    func sorted(_ sortWay: (_ one: Int,_ two: Int) -> Bool) -> Bool {
        return sortWay(numbers[0], numbers[1])
        
    }
    
    
}
