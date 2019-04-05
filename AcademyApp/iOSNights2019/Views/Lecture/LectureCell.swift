//
//  LectureCell.swift
//  iOSNights2019
//
//  Created by Jan on 04/04/2019.
//  Copyright © 2019 STRV. All rights reserved.
//

import AlamofireImage
import UIKit

class LectureCell: UITableViewCell, NibNameIdentifiable {
    struct Input {
        let title: String
        let imageUrl: URL
    }

    @IBOutlet private var titleLabel: UILabel!
    @IBOutlet private var lectureImageView: UIImageView!

    func configure(with input: Input) {
        titleLabel.text = input.title
        lectureImageView.af_setImage(withURL: input.imageUrl)
    }
}
