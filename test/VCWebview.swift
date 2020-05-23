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

    @IBOutlet var webKit: WKWebView!
    
    @IBOutlet var ind: UIActivityIndicatorView!
    let urlString = "https://sandbox-pwa.signcatch.com/"
    // let urlString = "https://www.google.com/"
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        DispatchQueue.main.async {
            let url = URL(string: self.urlString)
            let urlReq = URLRequest.init(url: url!)            
            self.webKit.load(urlReq)
            self.webKit.navigationDelegate = self
            self.webKit.scrollView.delegate = self
        }
    }
    
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
           return nil
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        
        let script = "localStorage.getItem(\"key\")"
        
        webView.evaluateJavaScript(script) { (result, error) in
            webView.evaluateJavaScript("localStorage.setItem(\"key\", \"value\")") { (result, error) in
                //webView.reload()
            }
        }
        
        // you might want to edit the script, with the escape characters
           
       webView.evaluateJavaScript(script) { (token, error) in
            print("token = \(String(describing: token))")
       }
        
    }

}
