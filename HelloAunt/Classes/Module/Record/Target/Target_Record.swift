//
//  Target_Home.swift
//  HelloAunt
//
//  Created by tugou on 2019/4/15.
//  Copyright © 2019年 bob. All rights reserved.
//

import UIKit

class Target_Record: NSObject {
    @objc func Action_homeViewContoller(_ params:[AnyHashable:Any]) -> UIViewController {
        let vc = BobHomeViewController()
        return vc;
    }
}
