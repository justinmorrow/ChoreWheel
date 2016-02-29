//
//  AppDelegate.swift
//  ChoreWheel
//
//  Created by Justin Morrow on 2/28/16.
//  Copyright © 2016 JPMorrow. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(application: UIApplication, willFinishLaunchingWithOptions launchOptions: [NSObject : AnyObject]?) -> Bool {
        let window = UIWindow(frame: UIScreen.mainScreen().bounds)
        let mainMenuViewController = MainMenuViewController()
        let mainNavigationViewController = UINavigationController(rootViewController: mainMenuViewController)
        window.rootViewController = mainNavigationViewController
        self.window = window
        window.makeKeyAndVisible()
        
        return true
    }
}

