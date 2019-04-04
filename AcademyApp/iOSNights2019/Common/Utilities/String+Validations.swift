//
//  String+Validations.swift
//  iOSNights2019
//
//  Created by Jan on 04/04/2019.
//  Copyright © 2019 STRV. All rights reserved.
//

import Foundation

extension String {
    var isValidEmail: Bool {
        // return !email.isEmpty // Validate only email existation

        // E.g.: https://stackoverflow.com/a/25471164/1054550
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        // let emailTest = NSPredicate(format: "SELF MATCHES %@", emailRegEx)
        // return emailTest.evaluate(with: email)

        // Or: https://stackoverflow.com/a/29784455/1054550
        return range(of: emailRegEx, options: .regularExpression, range: nil, locale: nil) != nil
    }

    var isValidPassword: Bool {
        return isNotEmpty
    }

    var isNotEmpty: Bool {
        return !isEmpty
    }
}
