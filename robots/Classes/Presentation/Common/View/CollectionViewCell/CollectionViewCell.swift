//
//  CollectionViewCell.swift
//  robots
//
//  Created by TeeDee on 28.12.16.
//  Copyright © 2016 teedee. All rights reserved.
//

import UIKit

@IBDesignable
class CollectionViewCell: UICollectionViewCell {
    
    // MARK: Properties
    
    var viewBackgroundColor: UIColor { return UIColor.white }
    var cornerRadius: CGFloat { return 0.0 }
    var masksToBounds: Bool { return false }
    
    // MARK: Initialization and deinitialization
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        applyStyle()
    }
    
    // MARK: NSObject UIKit Additions
    
    override func prepareForInterfaceBuilder() { applyStyle() }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        applyStyle()
    }
    
    // MARK: Private Helpers
    
    private func applyStyle() {
        backgroundColor = viewBackgroundColor
        layer.masksToBounds = masksToBounds
        layer.cornerRadius = cornerRadius
    }
}
