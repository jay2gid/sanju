//
//  VCSwitch.swift
//  POSLiteWeb
//
//  Created by Python on 5/22/20.
//  Copyright © 2020 Python. All rights reserved.
//

import UIKit

class VCSwitch: UIViewController {

    
    @IBOutlet var mySwtch: UISwitch!
    
    @IBOutlet var lbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    let offState = "switch is off"
    let onState = "switch is on"
    
    @IBAction func tapSwitch(_ sender: Any) {
   
        if mySwtch.isOn == true {
            lbl.text = onState
        }else{
            lbl.text = offState
        }
        
    }
    
    
    
    //  goto next viewcontroller
    @IBAction func tapNext(_ sender: Any) {
        
        let vcCore = CoreSwift.init(nibName: "CoreSwift", bundle: nil)
        
        self.navigationController?.pushViewController(vcCore, animated: true)

    }
    
    
    //got to ui
    
    @IBAction func tapUI(_ sender: Any) {
        
//        let vcUI = VCUI.init(nibName: "VCUI", bundle: nil)
//        self.navigationController?.pushViewController(vcUI, animated: true)
        
        let slide = VCImageSlide.init(nibName: "VCImageSlide", bundle: nil)
        self.navigationController?.pushViewController(slide
            , animated: true)
    }
    
    
    @IBAction func tapTable(_ sender: Any) {
        
        
        let vcUI = VCTable.init(nibName: "VCTable", bundle: nil)
        self.navigationController?.pushViewController(vcUI, animated: true)
        
    }
    
    
}
