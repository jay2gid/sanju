//
//  AppDelegate.swift
//  test
//
//  Created by Python on 4/24/20.
//  Copyright © 2020 Python. All rights reserved.
//

import UIKit


@UIApplicationMain

class AppDelegate: UIResponder, UIApplicationDelegate {


    var window : UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
     
        if #available(iOS 13.0, *) {
        }else{
           window = UIWindow()
           AppDelegate.launchWindow(window: window!)
        }
    
        return true
        
    }


    class func launchWindow(window:UIWindow) {
       
        let vcFirst = VCSwitch.init(nibName: "VCSwitch", bundle: nil)

        let navigation = UINavigationController.init(rootViewController: vcFirst)
        
        window.rootViewController = navigation
        window.makeKeyAndVisible()
    }

}

var SCNavigation =  UINavigationController()
