//
//  UITableView+ReuseIdentifier.swift
//  iOSNights2019
//
//  Created by Jan on 04/04/2019.
//  Copyright © 2019 STRV. All rights reserved.
//

import UIKit

extension UITableViewCell {
    static var reuseIdentifer: String {
        return String(describing: self) + "Identifier"
    }
}

extension UITableView {
    func dequeueReusableCell<T: UITableViewCell>(of type: T.Type, at indexPath: IndexPath) -> T {
        guard let cell = self.dequeueReusableCell(withIdentifier: T.reuseIdentifer, for: indexPath) as? T else {
            fatalError("Unable to instantiate cell of type \(type)")
        }

        return cell
    }
}
