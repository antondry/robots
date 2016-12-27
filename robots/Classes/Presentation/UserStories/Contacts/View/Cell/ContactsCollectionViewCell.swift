//
//  ContactsCollectionViewCell.swift
//  robots
//
//  Created by TeeDee on 27.12.16.
//  Copyright © 2016 teedee. All rights reserved.
//

import UIKit

class ContactsCollectionViewCell: WhiteRoundedCollectionViewCell {
    
    // MARK: IBOutlets
    
    @IBOutlet weak var imageView: PhotoImageView!
    @IBOutlet weak var titleLabel: FullnameLabel!
    
    // MARK: Internal helpers
    
    func configure(withContact contact: Contact) {
        imageView.setImageWithURLString(contact.photo, placeholderImage: nil)
        titleLabel.text = contact.fullName
    }

}
