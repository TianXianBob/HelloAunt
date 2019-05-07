//
//  BobLoginViewModel.swift
//  HelloAunt
//
//  Created by bob on 2018/12/23.
//  Copyright © 2018年 bob. All rights reserved.
//

import UIKit
import RxSwift


enum Result {
    case ok(message:String)
    case empty
    case failed(message:String)
}

class BobLoginViewModel: NSObject {
    // 输出
//    let name : Observable<String>
//    let mobile : Observable<String>
//    let pwd : Observable<String>

    
    var name = Variable("")
    let mobile = Variable("")
    let pwd = Variable("")
    
//    let nameUsable : Observable<Result>
    let minCharactersCount = 6

    override init() {
//        nameUsable = name.asObservable().flatMapLatest({ name in
//            return validationUserName(name);
//        })
        
        
        super.init()
    }
 
    
    func validationUserName(_ name:String) -> Observable<Result> {
        if (name.count == 0) {
            return Observable.just(Result.empty)
        }
        
        if (name.count < minCharactersCount) {
            return Observable.just(Result.failed(message: "用户名长度至少为6位"))
        }
        
//        if checkHasUserName(name) {
//            return Observable.just(Result.failed(message: "用户名已存在"))
//        }
        
        return Observable.just(Result.ok(message: "用户名可用"))
        
    }
    
}
