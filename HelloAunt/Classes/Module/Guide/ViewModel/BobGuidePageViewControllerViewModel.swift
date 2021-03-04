//
//  BobGuidePageViewControllerViewModel.swift
//  HelloAunt
//
//  Created by bob on 2021/3/1.
//  Copyright © 2021 bob. All rights reserved.
//

import UIKit
import YYCategories

class BobGuidePageViewControllerViewModel {
    // 最近两个月的日期字符串
    public var latestTwoMonthDateStringArray: [String]? {
        guard let dates = latestTwoMonthDateArray else {
            return nil
        }
        
        var dateStrins = BobDateHelper.getDateStringArray(dates: dates)
        if dateStrins.count > 2 {
            dateStrins[dateStrins.count - 1] = "今天"
            dateStrins[dateStrins.count - 2] = "昨天"
        }
        
        return dateStrins
    }
    
    // 最近两个月的日期
    public var latestTwoMonthDateArray: [Date]? {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
        formatter.locale = .current
        
        let twoMonthAgoTimeInterval = Date().timeIntervalSinceReferenceDate - 86400 * 60
        let twoMonthAgeDate = Date.init(timeIntervalSinceReferenceDate: twoMonthAgoTimeInterval)
        
        let dates = BobDateHelper.getDateArray(leftDate: twoMonthAgeDate, rightDate: Date())
        return dates
    }
    
    
}
