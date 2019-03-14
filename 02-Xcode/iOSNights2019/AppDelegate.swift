//
//  AppDelegate.swift
//  iOSNights2019
//
//  Created by Jan Kaltoun on 14/02/2019.
//  Copyright © 2019 STRV. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_: UIApplication, didFinishLaunchingWithOptions _: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let loginViewController = UIStoryboard(name: "LoginViewController", bundle: nil)
            .instantiateInitialViewController() as? LoginViewController

        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = loginViewController
        window?.makeKeyAndVisible()

        return true
    }
}
