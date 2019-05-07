//
//  BobHomeViewController.swift
//  HelloAunt
//
//  Created by tugou on 2019/4/15.
//  Copyright © 2019年 bob. All rights reserved.
//

import UIKit
//import CVCalendar

class BobHomeViewController: UIViewController {
//    var viewCalendarMenu: CVCalendarMenuView!
//    var viewCalendar: CVCalendarView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        setSubviews()
    }
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
//        self.viewCalendarMenu.commitMenuViewUpdate()
//        self.viewCalendar.commitCalendarViewUpdate()
    }
}

extension BobHomeViewController  {
//    func presentationMode() -> CalendarMode {
//        return .monthView
//    }
//
//    func firstWeekday() -> Weekday {
//        return .sunday
//    }
//
//    func presentedDateUpdated(_ date: CVDate) {
//        self.title = date.globalDescription
//    }
//
//    //每个日期上面是否添加横线(连在一起就形成每行的分隔线)
////    func topMarker(shouldDisplayOnDayView dayView: CVCalendarDayView) -> Bool {
////        return true
////    }
//
//    //日期选择响应
//    func didSelectDayView(_ dayView: CVCalendarDayView, animationDidFinish: Bool) {
//        //获取日期
//        let date = dayView.date.convertedDate()!
//        // 创建一个日期格式器
//        let dformatter = DateFormatter()
//        dformatter.dateFormat = "yyyy年MM月dd日"
//        let message = "当前选择的日期是：\(dformatter.string(from: date))"
//        //将选择的日期弹出显示
//        let alertController = UIAlertController(title: "", message: message,preferredStyle: .alert)
//        let okAction = UIAlertAction(title: "确定", style: .cancel, handler: nil)
//        alertController.addAction(okAction)
//        self.present(alertController, animated: true, completion: nil)
//    }
// 
    
    func setSubviews() {
        self.view.backgroundColor = UIColor.white
//        self.viewCalendarMenu = CVCalendarMenuView()
//        self.viewCalendar = CVCalendarView()
//
//        self.viewCalendarMenu.menuViewDelegate = self
//        self.viewCalendar.calendarDelegate = self
//        self.view.addSubview(self.viewCalendarMenu)
//        self.view.addSubview(self.viewCalendar)
//
//        viewCalendarMenu.snp.makeConstraints { (make) in
//            make.top.equalTo(self.view).offset(kNavAndStatusHeight)
//            make.left.right.equalTo(self.view)
//            make.height.equalTo(45)
//        }
//
//        viewCalendar.snp.makeConstraints { (make) in
//            make.top.equalTo(viewCalendarMenu.snp.bottom)
//            make.left.right.equalTo(self.view)
//            make.height.equalTo(self.view.snp.width).multipliedBy(1.5)
//        }
        
    }
}
