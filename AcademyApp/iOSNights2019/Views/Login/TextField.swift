//
//  TextField.swift
//  iOSNights2019
//
//  Created by Jiri Ostatnicky on 21/03/2019.
//  Copyright © 2019 STRV. All rights reserved.
//

import UIKit

class TextField: UITextField {
    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
    }
}

// MARK: - Private
private extension TextField {
    func setupUI() {
        textColor = .white
        keyboardAppearance = .dark
        defaultTextAttributes.updateValue(1, forKey: NSAttributedString.Key.kern) // Space between letters
    }
}
