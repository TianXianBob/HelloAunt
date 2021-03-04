//
//  BobHomeViewControllerViewModel.swift
//  HelloAunt
//
//  Created by bob on 2021/2/25.
//  Copyright © 2021 bob. All rights reserved.
//

import UIKit

let kIsShowedGuidePageKey = "kIsShowedGuidePageKey";
class BobHomeViewControllerViewModel {
    var isShowedGuidePage: Bool {
        set {
            UserDefaults.standard.setValue(newValue, forKey: kIsShowedGuidePageKey);
        }
        
        get {
            return UserDefaults.standard.bool(forKey: kIsShowedGuidePageKey);
        }
    }
}
