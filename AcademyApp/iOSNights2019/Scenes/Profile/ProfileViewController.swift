//
//  ProfileViewController.swift
//  iOSNights2019
//
//  Created by Jakub Vodak on 28/03/2019.
//  Copyright © 2019 STRV. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    // MARK: - Object lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Action

    @IBAction func settingAction() {
        let settingsAlert = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)

        let signOutAction = UIAlertAction(title: "Sign Out", style: .destructive) { _ in
            RootCoordinator.shared?.didLogOut()
        }

        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { _ in }

        settingsAlert.addAction(signOutAction)
        settingsAlert.addAction(cancelAction)

        present(settingsAlert, animated: true, completion: nil)
    }
}
