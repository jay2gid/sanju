//
//  CoreSwift.swift
//  POSLiteWeb
//
//  Created by Python on 5/23/20.
//  Copyright © 2020 Python. All rights reserved.
//

import UIKit

class CoreSwift: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .lightGray
        
        
        learnString()
    }

    
    
    
    var changable1 = String()
    var changable2 = ""
    
    
    func learnString() {
        
        // initialise
        
        ///
        let conts = "hello" // constant
        print(conts)
        ///
        
        
        ///
        changable1 = "hi"
        print(changable1)
        ///
        
        
        // two string add
        
        let newOne = conts + " " + changable1
        print(newOne)
        
    }
    
    
    
    func leandFloat() {
        
        let valueFloat = 1.0
        print(valueFloat)
    }
    
}
