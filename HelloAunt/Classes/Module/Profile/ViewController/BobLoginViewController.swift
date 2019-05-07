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
    
    @IBOutlet weak var confirmTF: UITextField!
    
    @IBOutlet weak var passwordTF: UITextField!
    
    @IBOutlet weak var loginBtn: UIButton!

    var viewModel = BobLoginViewModel()

    let disposeBag = DisposeBag()
    
    
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
//        _ = BobLoginViewModel(input: (name:nameTF.rx.text.orEmpty.asObservable(),
//           mobile:phoneTF.rx.text.orEmpty.asObservable(),
//           pwd:passwordTF.rx.text.orEmpty.asObservable()
//            ), dependency: ())
        let nameMaxLength = 12
        let passwordMaxLength = 18
        let passwordMinLength = 6
        // 双向绑定
        viewModel.name.asObservable().bind(to: nameTF.rx.text).disposed(by: disposeBag)
        nameTF.rx.text.orEmpty.bind(to: viewModel.name).disposed(by: disposeBag)
        
        weak var weakSelf = self
        
        //
        let userNameValid = nameTF.rx.text.orEmpty.map {
            $0.count <= nameMaxLength
        }.share(replay: 1)
        
        let lengthLimitSequece = userNameValid.subscribe(onNext: { (valid) in
            print("valid",valid)
            if (!valid) {
                let sub = self.nameTF.text?.prefix(nameMaxLength)
                self.nameTF.text = String(sub!)
            }
        })
        lengthLimitSequece.disposed(by: disposeBag)
        
        

        let passwordValid = passwordTF.rx.text.orEmpty
            .map {
                $0.count <= passwordMaxLength &&
                    $0.count >= passwordMinLength }
            .share(replay: 1)
        let limitPassSequece = passwordValid.subscribe(onNext: { (valid) in
            print("valid",valid)
            if (!valid) {
                self.passwordTF.textColor = UIColor.red
            } else {
                self.passwordTF.textColor = UIColor.RGB(red: 27, green: 48, blue: 63)
                
                let sub = self.passwordTF.text?.prefix(passwordMaxLength)
                self.passwordTF.text = String(sub!)
            }
        })
        limitPassSequece.disposed(by: disposeBag)

        
        let confirmValid = confirmTF.rx.text.orEmpty
            .map {
                $0.count <= passwordMaxLength &&
                    $0.count >= passwordMinLength && $0 == weakSelf?.passwordTF.text}
            .share(replay: 1)
        let confirmSequece = confirmValid.subscribe(onNext: { (valid) in
            print("valid",valid)
            if (!valid) {
                self.confirmTF.textColor = UIColor.red
            } else {
                self.confirmTF.textColor = UIColor.RGB(red: 27, green: 48, blue: 63)
                
                let sub = self.confirmTF.text?.prefix(passwordMaxLength)
                self.confirmTF.text = String(sub!)
            }
        })
        confirmSequece.disposed(by: disposeBag)

        let everyValid = Observable.combineLatest(passwordValid, confirmValid) {
            $0 && $1
        }.share(replay: 1)
        
//        everyValid.bind(to: loginBtn.rx.isEnabled).disposed(by: disposeBag)
        
        loginBtn.rx.tap
            .subscribe(onNext: {
                weakSelf?.click()
            }).disposed(by: disposeBag)

        
//        loginBtn.addTarget(self, action:  #selector(click), for: UIControlEvents.touchUpInside)
    }
    
    
    @objc func click() {
        let vc = CTMediator.sharedInstance()?.record_homeViewController(callback: { (result) in
            print(result)
        })
        
        navigationController?.pushViewController(vc!, animated: true)
    }
}

