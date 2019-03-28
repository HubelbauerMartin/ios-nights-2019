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
        switch state {
        case .show:
            setTitle(NSLocalizedString("Show", comment: "").uppercased(), for: .normal)
        case .hide:
            setTitle(NSLocalizedString("Hide", comment: "").uppercased(), for: .normal)
        }
    }
}
