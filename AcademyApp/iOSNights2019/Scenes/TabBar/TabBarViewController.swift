//
//  TabBarViewController.swift
//  iOSNights2019
//
//  Created by Jakub Vodak on 28/03/2019.
//  Copyright © 2019 STRV. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {
    // MARK: - Object lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        setup()
    }
}

private extension TabBarViewController {
    func setup() {
        tabBar.barTintColor = UIColor(named: "tabbarBackground")
        tabBar.tintColor = .white
    }
}
