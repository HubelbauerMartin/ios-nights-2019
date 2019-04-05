//
//  UIColorExtension.swift
//  iOSNights2019
//
//  Created by Jiri Ostatnicky on 21/03/2019.
//  Copyright © 2019 STRV. All rights reserved.
//

import UIKit

extension UIColor {
    static var appScreenBackground: UIColor {
        // swiftlint:disable:next force_unwrapping
        return UIColor(named: "screenBackground")!
    }

    static var appSeparator: UIColor {
        // swiftlint:disable:next force_unwrapping
        return UIColor(named: "separator")!
    }

    static var appGrayText: UIColor {
        // swiftlint:disable:next force_unwrapping
        return UIColor(named: "grayText")!
    }

    static var appButtonBackground: UIColor {
        // swiftlint:disable:next force_unwrapping
        return UIColor(named: "buttonBackground")!
    }

    static var appRed: UIColor {
        // swiftlint:disable:next force_unwrapping
        return UIColor(named: "red")!
    }

    static var appBarBackground: UIColor {
        // swiftlint:disable:next force_unwrapping
        return UIColor(named: "tabBarBackground")!
    }

    static var appWhiteText: UIColor {
        // swiftlint:disable:next force_unwrapping
        return UIColor(named: "whiteText")!
    }
}
