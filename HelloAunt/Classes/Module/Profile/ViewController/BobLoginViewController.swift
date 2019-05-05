//
//  BobLoginViewController.swift
//  HelloAunt
//
//  Created by bob on 2018/12/23.
//  Copyright © 2018年 bob. All rights reserved.
//  登录注册页

import UIKit
import SnapKit
import RxSwift
import RxCocoa
import CTMediator

class BobLoginViewController: UIViewController {
    
    @IBOutlet weak var nameTF: UITextField!
    
    @IBOutlet weak var phoneTF: UITextField!
    
    @IBOutlet weak var passwordTF: UITextField!
    
    @IBOutlet weak var loginBtn: UIButton!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        binderViewModel()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = true
    }

    override func viewWillDisappear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = false
    }
}

extension BobLoginViewController {

    fileprivate func binderViewModel() {
        _ = BobLoginViewModel(input: (name:nameTF.rx.text.orEmpty.asObservable(),
           mobile:phoneTF.rx.text.orEmpty.asObservable(),
           pwd:passwordTF.rx.text.orEmpty.asObservable()
            ), dependency: ())
        
        loginBtn.addTarget(self, action:  #selector(click), for: UIControlEvents.touchUpInside)
    }
    
    
    @objc func click() {
        let vc = CTMediator.sharedInstance()?.record_homeViewController(callback: { (result) in
            print(result)
        })
        
        navigationController?.pushViewController(vc!, animated: true)
    }
}

