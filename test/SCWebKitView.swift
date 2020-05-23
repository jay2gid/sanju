//
//  SCWebKitView.swift
//  POSLiteWeb
//
//  Created by Python on 5/8/20.
//  Copyright © 2020 Python. All rights reserved.
//

import UIKit
import WebKit

class SCWebKitView: UIViewController , WKNavigationDelegate , UIScrollViewDelegate{

    
    var webKit: WKWebView!
    var scUrl = "https://launchpad-pwa.signcatch.com/home/4b4ac0846c9ead76ed37d8a9a7d7e8b107657f848a7846c9/9855085962"// signcatch url
    let bgColor = UIColor(red: 0.961, green: 0.961, blue: 0.961, alpha: 1) // color
    var heightWK  : CGFloat = 0.0
    
    var webView = UIWebView()
    
    var lastContentOffset : CGPoint!
    override func viewDidLoad() {
        super.viewDidLoad()
       
        DispatchQueue.main.async {
            self.makeWebView()
            self.view.backgroundColor = self.bgColor
        }
        
//        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
//
//        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)

        
    }
    
    
    
    
//    @objc func keyboardWillHide() {
//        UIView.animate(withDuration: 0.1) {
//            self.webKit.frame.size.height = self.heightWK
//        }
//
//    }
//
//     var keybordHt : CGFloat = 0.0

//
//      @objc func keyboardWillShow(_ notification: Notification) {
//
//        lastContentOffset = webKit.scrollView.contentOffset
//        if let keyboardFrame: NSValue = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue {
//            let keyboardRectangle = keyboardFrame.cgRectValue
//            let keyboardHeight = keyboardRectangle.height
//            keybordHt = keyboardHeight
//            UIView.animate(withDuration: 0.1) {
//                if self.webKit.frame.size.height >= self.heightWK {
//                    self.webKit.frame.size.height = self.webKit.frame.size.height - keyboardHeight
//                }
//            }
////}
//                //webKit.scrollView.contentOffset = CGPoint.init(x: 0, y: lastContentOffset.y + keyboardHeight/2)
//          }
//      }
//
    
    //MARK: creating webview and load request
    func makeWebView() {
        
        var upperPadding :CGFloat = 20.0
        if self.hasTopNotch {
            upperPadding = 44.0
        }
        
        heightWK = self.view.frame.height - upperPadding
        webKit = WKWebView.init(frame: CGRect.init(x: 0, y: upperPadding, width: self.view.frame.width, height: heightWK))
        self.view.addSubview(webKit)
        webKit.backgroundColor = bgColor
        webKit.scrollView.backgroundColor = bgColor
        
        let url = URL(string: self.scUrl)
        let urlReq = URLRequest.init(url: url!)
        self.webKit.load(urlReq)
        self.webKit.navigationDelegate = self
        self.webKit.scrollView.delegate = self
        
    }
    
    
    
    //MARK: scroll view delegate
    func scrollViewWillBeginZooming(_ scrollView: UIScrollView, with view: UIView?) {
         scrollView.pinchGestureRecognizer?.isEnabled = false
         scrollView.setZoomScale(1, animated: false)
     }
     
     func scrollViewDidZoom(_ scrollView: UIScrollView) {
         scrollView.setZoomScale(1, animated: false)
     }
     
     func viewForZooming(in scrollView: UIScrollView) -> UIView? {
            return nil
     }
     
    
    //MARK: webkit delegate
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
  
    
      //MARK: helper function
      var hasTopNotch: Bool {
          if #available(iOS 11.0, tvOS 11.0, *) {
              return UIApplication.shared.delegate?.window??.safeAreaInsets.top ?? 0 > 20
          }
          return false
      }
    
     
      
}
