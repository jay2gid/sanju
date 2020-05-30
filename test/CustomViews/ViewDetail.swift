//
//  ViewDetail.swift
//  POSLiteWeb
//
//  Created by Python on 5/28/20.
//  Copyright © 2020 Python. All rights reserved.
//

import UIKit

class ViewDetail: UIView {

    
    class func commonInit() -> ViewDetail {
         let nibView = Bundle.main.loadNibNamed("ViewDetail", owner: self, options: nil)?[0] as! ViewDetail
         nibView.layoutIfNeeded()
         return nibView
    }
      
      
    
    @IBOutlet var lblName: UILabel!
    @IBOutlet var lblAge: UILabel!
    @IBOutlet var lblCiy: UILabel!
    
   
    var dictInfo = [String:String]()
    
    override func draw(_ rect: CGRect) {
    
        lblName.text = dictInfo["name"]
        lblAge.text = dictInfo["age"]
        lblCiy.text = dictInfo["city"]
    }
   

    @IBAction func tapCross(_ sender: Any) {
        self.removeFromSuperview()
    }
   
    
    @IBAction func tapClose3(_ sender: Any) {
        tapCross(self)
    }
    
    
}
