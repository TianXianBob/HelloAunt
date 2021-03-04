//
//  BobDateHelper.swift
//  HelloAunt
//
//  Created by bob on 2021/3/1.
//  Copyright © 2021 bob. All rights reserved.
//

import UIKit


class BobDateHelper: NSObject {
    /// 获取两个日期之间的所有日期，精确到天
    /// - Parameters:
    ///   - leftDateStr: 最小时间
    ///   - rightDateStr: 最大时间
    class func getDateArray(leftDate: Date, rightDate: Date) -> [Date]? {
        guard leftDate < rightDate else {
            return nil
        }

        
        let oneDayTimeInterval: Double = 24 * 60 * 60
        
        
        var dateArray = [Date]()
        
        let calendar = Calendar(identifier: .gregorian)
        let comp = calendar.dateComponents([.day], from: leftDate, to: rightDate)
        if let day = comp.day {
            for i in 0..<day+1 {
                let nextDateTimeInterval = leftDate.timeIntervalSinceReferenceDate + oneDayTimeInterval * Double(i)
                let nextDate = Date.init(timeIntervalSinceReferenceDate: nextDateTimeInterval)
                dateArray.append(nextDate)
            }
        }
        
        return dateArray
    }
    
    
    class func getDateStringArray(dates: [Date]) -> [String] {
        let kWeekNameMap = [
            "1" : "星期日",
            "2" : "星期一",
            "3" : "星期二",
            "4" : "星期三",
            "5" : "星期四",
            "6" : "星期五",
            "7" : "星期六",
        ]
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        formatter.locale = .current
        
        var dayArray = [String]()
        
        let calendar = Calendar(identifier: .gregorian)
        for i in 0..<dates.count {
            let date = dates[i]
            let dateString = formatter.string(from: date)
            let week = calendar.component(.weekday, from: date)
            let weekName = kWeekNameMap["\(week)"] ?? ""
            dayArray.append("\(dateString) \(weekName)")
        }
        
        return dayArray
    }
    
}
