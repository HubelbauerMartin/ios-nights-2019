//
//  NibNameIdentifiable.swift
//  iOSNights2019
//
//  Created by Jan on 04/04/2019.
//  Copyright © 2019 STRV. All rights reserved.
//

import UIKit

protocol NibNameIdentifiable {}

extension NibNameIdentifiable where Self: UIView {
    static var nibIdentifier: String {
        return String(describing: Self.self)
    }

    static var nib: UINib {
        return UINib(nibName: nibIdentifier, bundle: Bundle(for: Self.self))
    }
}
