//
//  DoneButton.swift
//  iOSNights2019
//
//  Created by Jiri Ostatnicky on 21/03/2019.
//  Copyright © 2019 STRV. All rights reserved.
//

import UIKit

class DoneButton: UIButton {
    override var isEnabled: Bool {
        didSet {
            backgroundColor = isEnabled ? UIColor.red : UIColor.appButtonBackground
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
    }
}

private extension DoneButton {
    func setupUI() {
        layer.cornerRadius = 3
    }
}
