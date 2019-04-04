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
    // swiftlint:disable:next weak_delegate
    private var appDelegate: AppDelegate

    // MARK: - Object lifecycle
    init(appDelegate: AppDelegate) {
        self.appDelegate = appDelegate
    }

    // MARK: - Public methods
    func didLogIn() {
        changeContextTo(tabBarViewController())
    }

    func didLogOut() {
        changeContextTo(loginViewController())
    }
}

private extension RootCoordinator {
    func tabBarViewController() -> UIViewController {
        return UIStoryboard(name: "TabBarViewController", bundle: nil).instantiateInitialViewController() ?? UIViewController()
    }

    func loginViewController() -> UIViewController {
        return UIStoryboard(name: "LoginViewController", bundle: nil).instantiateInitialViewController() ?? UIViewController()
    }

    func changeContextTo(_ viewController: UIViewController) {
        appDelegate.window?.rootViewController = viewController
    }
}
