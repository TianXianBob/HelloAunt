//
//  BobHomeViewController.swift
//  HelloAunt
//
//  Created by tugou on 2019/4/15.
//  Copyright © 2019年 bob. All rights reserved.
//

import UIKit

class BobHomeViewController: UIViewController {
    let vm = BobHomeViewControllerViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setSubviews()
        showGuidePageIfNeeded()
    }
}

extension BobHomeViewController {
    func setSubviews() {
        self.view.backgroundColor = UIColor.white
    }
    
    func showGuidePageIfNeeded() {
        if !vm.isShowedGuidePage {
            let guidePageVc = BobGuidePageViewController()
            guidePageVc.modalPresentationStyle = .fullScreen
            present(guidePageVc, animated: true, completion: nil)
        }
    }
}
