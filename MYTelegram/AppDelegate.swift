//
//  AppDelegate.swift
//  MYTelegram
//
//  Created by MacBook Pro on 11/11/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        let vc = LoginVC(nibName: "LoginVC", bundle: nil)
        let navvc = UINavigationController(rootViewController: vc)
       let tabbar = TabBar()
        if cache.bool(forKey: "isTapped") {
            window?.rootViewController = tabbar
        }else {
            window?.rootViewController = navvc
        }
        
        window?.makeKeyAndVisible()
        return true
    }

    


}

