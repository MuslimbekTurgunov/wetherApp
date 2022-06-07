//
//  AppDelegate.swift
//  wetherApp
//
//  Created by Macbook on 07/06/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {


    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow()
        let vc = wetherVC()
        
        window?.rootViewController = vc
        window?.makeKeyAndVisible()
        
        return true
    }


}

