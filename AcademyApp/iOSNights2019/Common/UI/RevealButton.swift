//
//  RevealButton.swift
//  iOSNights2019
//
//  Created by Jiri Ostatnicky on 28/03/2019.
//  Copyright © 2019 STRV. All rights reserved.
//

import UIKit

class RevealButton: UIButton {
    enum RevealState {
        case show
        case hide
    }

    func setState(_ state: RevealState) {
        let attr: [NSAttributedString.Key: Any] = [
            NSAttributedString.Key.foregroundColor: UIColor.appGrayText,
            NSAttributedString.Key.kern: 1
        ]
        let title: String = {
            switch state {
            case .show:
                return NSLocalizedString("Show", comment: "")
            case .hide:
                return NSLocalizedString("Hide", comment: "")
            }
        }()
        let attrTitle = NSAttributedString(string: title.uppercased(), attributes: attr)
        setAttributedTitle(attrTitle, for: .normal)
    }
}
