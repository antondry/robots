//
//  ImageView.swift
//  robots
//
//  Created by TeeDee on 27.12.16.
//  Copyright © 2016 teedee. All rights reserved.
//

import UIKit

@IBDesignable
class ImageView: UIImageView {
    
    // MARK: Properties
    
    var viewBackgroundColor: UIColor { return UIColor.clear }
    var cornerRadius: CGFloat { return 0.0 }
    var masksToBounds: Bool { return false }
    
    
    // MARK: Initialization and deinitialization
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        applyStyle()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        applyStyle()
    }
    
    // MARK: NSObject UIKit Additions
    
    override func prepareForInterfaceBuilder() { applyStyle() }
    
    // MARK: Private Helpers
    
    private func applyStyle() {
        backgroundColor = viewBackgroundColor
        layer.masksToBounds = self.masksToBounds
        layer.cornerRadius = self.cornerRadius
    }
}
