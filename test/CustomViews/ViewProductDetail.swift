//
//  ViewProductDetail.swift
//  POSLiteWeb
//
//  Created by Python on 6/5/20.
//  Copyright © 2020 Python. All rights reserved.
//

import UIKit

class ViewProductDetail: UIView {

    
    class func commonInit() -> ViewProductDetail {
         let nibView = Bundle.main.loadNibNamed("ViewProductDetail", owner: self, options: nil)?[0] as! ViewProductDetail
         nibView.layoutIfNeeded()
         return nibView
    }
      

    

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
