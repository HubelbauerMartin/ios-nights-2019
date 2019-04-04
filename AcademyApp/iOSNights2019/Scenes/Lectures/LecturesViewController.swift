//
//  LecturesViewController.swift
//  iOSNights2019
//
//  Created by Jakub Vodak on 28/03/2019.
//  Copyright © 2019 STRV. All rights reserved.
//

import UIKit

class LecturesViewController: UIViewController {
    // MARK: - Object Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

// MARK: - Action
private extension LecturesViewController {
    @IBAction func lectureDetailAction() {
        let storyboard = UIStoryboard(name: "LectureViewController", bundle: nil)

        if let viewController = storyboard.instantiateInitialViewController() as? LectureViewController {
            navigationController?.pushViewController(viewController, animated: true)
        }
    }
}
