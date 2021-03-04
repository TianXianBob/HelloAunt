//
//  BobGuidePageViewController.swift
//  HelloAunt
//
//  Created by bob on 2021/2/25.
//  Copyright © 2021 bob. All rights reserved.
//

import UIKit
import FSPagerView

class BobGuidePageViewController: UIViewController {
    private let pagerView = FSPagerView()
    private let kPagerViewCellKey = "FSPagerViewCell"
    private let kGuideStep = 3
    private let vm = BobGuidePageViewControllerViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setSubviews()
    }

}

extension BobGuidePageViewController {
    func setSubviews() {
        view.backgroundColor = .white
        
        do {
            pagerView.register(FSPagerViewCell.self, forCellWithReuseIdentifier: kPagerViewCellKey)
        }
    }
}

extension BobGuidePageViewController: FSPagerViewDataSource, FSPagerViewDelegate {
    func numberOfItems(in pagerView: FSPagerView) -> Int {
        return kGuideStep
    }
    
    func pagerView(_ pagerView: FSPagerView, cellForItemAt index: Int) -> FSPagerViewCell {
        let cell = pagerView.dequeueReusableCell(withReuseIdentifier: kPagerViewCellKey, at: index)
        return cell
    }
    
    
}
