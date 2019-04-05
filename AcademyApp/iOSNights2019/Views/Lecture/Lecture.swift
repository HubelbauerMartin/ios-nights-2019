//
//  Lecture.swift
//  iOSNights2019
//
//  Created by Jan on 04/04/2019.
//  Copyright © 2019 STRV. All rights reserved.
//

import Foundation

struct Lecture {
    let identifier: String
    let name: String
    // swiftlint:disable:next force_unwrapping
    let imageUrl: URL = URL(string: "https://s3.us-east-2.amazonaws.com/strv-ios-nights2019/lectures/list/Swift+I+(Playground)%402x.png")!
}
