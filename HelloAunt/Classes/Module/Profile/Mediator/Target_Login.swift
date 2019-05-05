//
//  Target_Login.swift
//  HelloAunt
//
//  Created by tugou on 2019/4/15.
//  Copyright © 2019年 bob. All rights reserved.
//

import UIKit

class Target_Login: NSObject {
    @objc func Action_loginViewContoller(_ params:[AnyHashable:Any]) -> UIViewController {
        let vc = BobLoginViewController.init()
        return vc;
    }
}
