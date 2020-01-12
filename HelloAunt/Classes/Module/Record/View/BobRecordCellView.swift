//
//  BobRecordCellView.swift
//  HelloAunt
//
//  Created by bob on 2019/6/14.
//  Copyright © 2019年 bob. All rights reserved.
//

import JTAppleCalendar

class BobRecordCellView: JTAppleCell {
    
    @IBOutlet weak var titleLb: UILabel!
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    //使用一个通用的init来加载xib
    func commonInit() {
        let nib = UINib(nibName: "BobRecordCellView", bundle: Bundle.main);
        let view = nib.instantiate(withOwner: self, options: nil)[0] as! UIView
        //自动匹配父控件的长宽
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.addSubview(view)
    }

}
