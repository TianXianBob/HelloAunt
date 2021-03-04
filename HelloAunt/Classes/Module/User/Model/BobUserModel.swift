//
//  BobUserModel.swift
//  HelloAunt
//
//  Created by bob on 2021/2/25.
//  Copyright © 2021 bob. All rights reserved.
//

import UIKit

class BobUserModel {
    var lastPeriodDate: Date
    var periodInterval: Int
    var periodLengthOfTime: Int
    
    init(lastPeriodDate: Date, periodInterval: Int, periodLengthOfTime: Int) {
        self.lastPeriodDate = lastPeriodDate
        self.periodInterval = periodInterval
        self.periodLengthOfTime = periodLengthOfTime
    }
}
