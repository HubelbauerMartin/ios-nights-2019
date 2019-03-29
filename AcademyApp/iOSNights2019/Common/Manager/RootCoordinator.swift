//
//  RootCoordinator.swift
//  iOSNights2019
//
//  Created by Jakub Vodak on 28/03/2019.
//  Copyright © 2019 STRV. All rights reserved.
//

import UIKit

class RootCoordinator {
    // MARK: - Variables
    static var shared: RootCoordinator?
    private var appDelegate: AppDelegate

    // MARK: - Object lifecycle
    init(appDelegate: AppDelegate) {
        self.appDelegate = appDelegate
    }

    // MARK: - Public methods
    func didLogIn() {
        changeContextTo(tabBarViewController() ?? UIViewController())
    }

    func didLogOut() {
        changeContextTo(loginViewController() ?? UIViewController())
    }
}

private extension RootCoordinator {
    func tabBarViewController() -> TabBarViewController? {
        return UIStoryboard(name: "TabBarViewController", bundle: nil).instantiateInitialViewController() as? TabBarViewController
    }

    func loginViewController() -> LoginViewController? {
        return UIStoryboard(name: "LoginViewController", bundle: nil).instantiateInitialViewController() as? LoginViewController
    }

    func changeContextTo(_ viewController: UIViewController) {
        appDelegate.window?.rootViewController = viewController
    }
}
