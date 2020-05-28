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
        
        
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
