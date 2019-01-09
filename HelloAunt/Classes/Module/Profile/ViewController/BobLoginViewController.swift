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

class BobLoginViewController: UIViewController {
    
    @IBOutlet weak var nameTF: UITextField!
    
    @IBOutlet weak var phoneTF: UITextField!
    
    @IBOutlet weak var passwordTF: UITextField!
    
    @IBOutlet weak var loginBtn: UIButton!


    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        setSubviews()
        binderViewModel()
    }

}

extension BobLoginViewController {

    fileprivate func binderViewModel() {
        let viewModel = BobLoginViewModel(input: (name:nameTF.rx.text.orEmpty.asObservable(),
           mobile:phoneTF.rx.text.orEmpty.asObservable(),
           pwd:passwordTF.rx.text.orEmpty.asObservable()
            ), dependency: ())
        
        
    }
    
}

