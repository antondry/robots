//
//  UIImage+ImageLoader.swift
//  robots
//
//  Created by TeeDee on 28.12.16.
//  Copyright © 2016 teedee. All rights reserved.
//

import UIKit
import AlamofireImage

extension UIImageView {
    func setImageWithURLString(_ urlString: String?, placeholderImage: String?) {
        var placeholder = UIImage()
        if placeholderImage != "" && placeholderImage != nil {
            placeholder = UIImage(named: placeholderImage!) ?? UIImage()
        }
        if let urlString = urlString, let url = Foundation.URL(string: urlString) {
            self.af_setImage(
                withURL: url,
                placeholderImage: nil,
                filter: nil,
                imageTransition: .crossDissolve(0.2)
            )
        } else {
            self.image = placeholder
        }
    }
}
