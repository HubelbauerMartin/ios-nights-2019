//
//  BlankNavigationViewController.swift
//  iOSNights2019
//
//  Created by Jakub Vodak on 28/03/2019.
//  Copyright © 2019 STRV. All rights reserved.
//

import UIKit

class BlankNavigationViewController: UINavigationController {
    // MARK: - Object lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }
}

extension BlankNavigationViewController {
    func setupUI() {
        navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationBar.shadowImage = UIImage()
        navigationBar.backgroundColor = .clear
        navigationBar.isTranslucent = true
        navigationBar.tintColor = .white
    }
}
