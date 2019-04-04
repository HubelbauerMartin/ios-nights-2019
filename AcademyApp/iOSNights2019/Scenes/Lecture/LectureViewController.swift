//
//  LectureViewController.swift
//  iOSNights2019
//
//  Created by Jakub Vodak on 28/03/2019.
//  Copyright © 2019 STRV. All rights reserved.
//

import UIKit

class LectureViewController: UIViewController {
    // MARK: - Outlets content

    @IBOutlet var imgHeader: UIImageView!
    @IBOutlet var lblTitle: UILabel!
    @IBOutlet var txtContent: UITextView!

    // MARK: - Outlets control

    @IBOutlet var contentControl: UISegmentedControl!
    @IBOutlet var attendedSwitch: UISwitch!

    // MARK: - Outlets constraints

    @IBOutlet var shadownHeightConstraint: NSLayoutConstraint!

    // MARK: - Object lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }
}

private extension LectureViewController {
    // MARK: - Appearance

    func setupUI() {
        contentControl.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.white], for: .selected)
        txtContent.textContainerInset = UIEdgeInsets(top: 20, left: 0, bottom: shadownHeightConstraint.constant, right: 0)
    }

    // MARK: - Action
    @IBAction func switchAction(_: UISwitch) {}

    @IBAction func segmentAction(_: UISegmentedControl) {}
}
