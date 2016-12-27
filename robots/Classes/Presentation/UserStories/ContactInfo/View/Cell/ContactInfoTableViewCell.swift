//
//  ContactInfoTableViewCell.swift
//  robots
//
//  Created by TeeDee on 28.12.16.
//  Copyright © 2016 teedee. All rights reserved.
//

import UIKit

class ContactInfoTableViewCell: UITableViewCell {
    
    // MARK: IBOutlets
    
    @IBOutlet weak var titleLabel: UILabel!

    // MARK: Internal helpers
    
    func configure(withText text: String) {
        titleLabel.text = text
    }
}
