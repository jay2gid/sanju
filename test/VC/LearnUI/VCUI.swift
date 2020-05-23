//
//  VCUI.swift
//  POSLiteWeb
//
//  Created by Python on 5/23/20.
//  Copyright © 2020 Python. All rights reserved.
//

import UIKit

class VCUI: UIViewController {
    
    
    @IBOutlet var viewUppler: UIView!
    
    @IBOutlet var btnPink: UIButton!
    
    var myPurpleColr = UIColor()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        modifyPinkButton()
        
        setColor()
    }
    
    
    
    func setColor()  {
        
        // default
        myPurpleColr = viewUppler.backgroundColor!
        
    }
    
    
    func modifyPinkButton(){
        
        btnPink.layer.borderColor = UIColor.blue.cgColor
        btnPink.layer.borderWidth = 1
        
        btnPink.setTitle("Default", for: .normal)
    }


    
    @IBAction func tapBlue(_ sender: UIButton) {
        
        viewUppler.backgroundColor = sender.backgroundColor
    }
    
    
    @IBAction func tapYello(_ sender:UIButton) {
        viewUppler.backgroundColor = sender.backgroundColor
    }
    
    
    @IBAction func tapRed(_ sender: UIButton) {
        viewUppler.backgroundColor = sender.backgroundColor
    }
    
    
    
    @IBAction func tapPink(_ sender: UIButton) {
        viewUppler.backgroundColor = myPurpleColr
    }
    
}
