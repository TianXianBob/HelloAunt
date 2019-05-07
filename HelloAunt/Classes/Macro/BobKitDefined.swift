//
//  BobKitDefined.swift
//  HelloAunt
//
//  Created by bob on 2018/7/4.
//  Copyright © 2018年 bob. All rights reserved.
//

import UIKit

let KScreenWidth = UIScreen.main.bounds.width
let KScreenHeight = UIScreen.main.bounds.height

/**
 判断是否是刘海屏
 */
var isNotchScreen : Bool {
    if #available(iOS 11, *) {
        /**
         guard 就是在声明判断条件时 可以直接写上你需要的条件(或者区间)，而不必去谨慎地寻找该区间的补集 ，相对来说能减少错误(主要是遗漏)，而且代码review时能思路能更清晰。
         */
        guard let w = UIApplication.shared.delegate?.window, let unwrapedWindow = w else {
            return false
        }
        
        /**
         以下分别是竖屏与横屏的时候,safeAreaInsets打印的值
         
         UIEdgeInsets(top: 44.0, left: 0.0, bottom: 34.0, right: 0.0)
         UIEdgeInsets(top: 0.0, left: 44.0, bottom: 21.0, right: 44.0)
         
         所以下面的判断包括横屏和竖屏
         */
        if unwrapedWindow.safeAreaInsets.left > 0 || unwrapedWindow.safeAreaInsets.bottom > 0 {
            print(unwrapedWindow.safeAreaInsets)
            return true
        }
    }
    return false
}


var KStatusBarHeight : Float {
    return isNotchScreen ? 44:20
}

var kNavAndStatusHeight : Float {
    return isNotchScreen ? 88:64
}

