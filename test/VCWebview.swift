//
//  VCWebview.swift
//  test
//
//  Created by Python on 4/24/20.
//  Copyright © 2020 Python. All rights reserved.
//

import UIKit
import WebKit

class VCWebview: UIViewController ,WKNavigationDelegate , UIScrollViewDelegate{


    @IBOutlet var txtFirst: UITextField!
    @IBOutlet var txtLast: UITextField!
    @IBOutlet var btnSubmit: UIButton!
    @IBOutlet var lblTemp: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func tapSubmit(_ sender: Any) {
        lblTemp.text =   txtFirst.text! + " " + txtLast.text!
    }
    
    
    
    func myFun() {
        
        // contant str
        let myName = "sanjay"
        print(myName)
        
        // changable
        var name : String!
        
        name = "hello"
        name = "sanjay"
      
        print(name!)
        
        
        
//        var value : Int!
        
        
        
    }
    

}



















extension VCWebview {
    
    
}

protocol randomgen {
    func random() -> Double
}


protocol Togglable {
    mutating func toggle()
}

enum Myenum:Togglable {
  
    mutating func toggle() {
        
        switch self {
        case .on:
            self = .off
        case .off:
            self = .on
        }
    }
    
    case on , off
    
    
}

protocol SomeProtocol {
    init(someParameter: Int)
}

protocol TextRepresentable {
    var textualDescription: String { get }
}

class MyClass: TextRepresentable {
    
    var textualDescription: String {
        return "hello"
    }
        
    func random() -> Double {
        return 2.0
    }
    
}
