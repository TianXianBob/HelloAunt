//
//  Login_CTMediator.swift
//  HelloAunt
//
//  Created by tugou on 2019/4/16.
//  Copyright © 2019年 bob. All rights reserved.
//

import CTMediator

extension CTMediator {
    @objc public func record_homeViewController(callback:@escaping (String) -> Void) -> UIViewController? {
        let  params = [
            "callback" : callback,
            kCTMediatorParamsKeySwiftTargetModuleName : "HelloAunt"
        ] as [AnyHashable : Any]
        
        if let vc = self.performTarget("Record", action: "homeViewContoller", params: params, shouldCacheTarget: false) {
            return vc as? UIViewController
        }
        
        return nil
    }
}
