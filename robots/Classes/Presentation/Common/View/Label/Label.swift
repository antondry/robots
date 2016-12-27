//
//  Label.swift
//  robots
//
//  Created by TeeDee on 27.12.16.
//  Copyright © 2016 teedee. All rights reserved.
//

import UIKit

@IBDesignable
class Label: UILabel {
    
    // MARK: Properties
    
    var labelFont: UIFont { return UIFont.systemFont(ofSize: UIFont.systemFontSize) }
    
    var labelColor: UIColor { return UIColor.white }
    
    var labelLines: Int { return 0 }
    
    var labelLineBreaks: NSLineBreakMode { return NSLineBreakMode.byWordWrapping }
    
    var textPosition: NSTextAlignment { return .left }
    
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
    
    fileprivate func applyStyle() {
        font = labelFont
        textColor = labelColor
        numberOfLines = labelLines
        lineBreakMode = labelLineBreaks
        textAlignment = textPosition
    }
}
