//
//  SceneDelegate.swift
//  test
//
//  Created by Python on 4/24/20.
//  Copyright © 2020 Python. All rights reserved.
//

import UIKit
import SwiftUI

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    @available(iOS 13.0, *)
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {

            if let windowScene = scene as? UIWindowScene {
                let window = UIWindow(windowScene: windowScene)
                self.window = window
                AppDelegate.launchWindow(window: window)
            }
    }


}

