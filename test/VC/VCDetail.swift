//
//  VCDetail.swift
//  POSLiteWeb
//
//  Created by Python on 5/28/20.
//  Copyright © 2020 Python. All rights reserved.
//

import UIKit

class VCDetail: UIViewController {

    
    @IBOutlet var lblNam: UILabel!
    @IBOutlet var lblAge: UILabel!
    @IBOutlet var lblCity: UILabel!
    
    @IBOutlet var scroll: UIScrollView!
    
    var tuple = ("","","")
    
    
    var dictInfo = [String:String]()
    override func viewDidLoad() {
        super.viewDidLoad()

        
    //        lblNam.text = tuple.0
    //        lblAge.text = tuple.1
    //        lblCity.text = tuple.2
            
        
        
        lblNam.text = dictInfo["name"]
        lblAge.text = dictInfo["age"]
        lblCity.text = dictInfo["city"]
        
        setScrollData()
    }


    
    
    func setScrollData()  {
        
        let viewPDetail = ViewProductDetail.commonInit()
        scroll.addSubview(viewPDetail)
        
        scroll.contentSize = CGSize.init(width: 0, height: 1000)
        
    }

}
