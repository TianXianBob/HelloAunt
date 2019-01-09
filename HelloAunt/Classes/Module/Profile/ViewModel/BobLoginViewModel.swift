//
//  BobLoginViewModel.swift
//  HelloAunt
//
//  Created by bob on 2018/12/23.
//  Copyright © 2018年 bob. All rights reserved.
//

import UIKit
import RxSwift

class BobLoginViewModel: NSObject {
    // 输出
    let validatedUsername : Observable<String>
    let validatedMobile : Observable<String>
    let validatedPwd : Observable<String>

    init(input:(
          name:Observable<String>,
        mobile:Observable<String>,
        pwd:Observable<String>
        ),
        dependency:(
        
        
        
        
        )
        
        
        ) {
//        validatedUsername = input.name.flatMapLatest(<#T##selector: (String) throws -> ObservableConvertibleType##(String) throws -> ObservableConvertibleType#>)
    }
}
