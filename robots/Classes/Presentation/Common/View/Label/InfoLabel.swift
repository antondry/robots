//
//  InfoLabel.swift
//  robots
//
//  Created by TeeDee on 28.12.16.
//  Copyright © 2016 teedee. All rights reserved.
//

import UIKit

@IBDesignable
class InfoLabel: Label {
    override var labelFont: UIFont { return Font.infoLabel }
    override var labelColor: UIColor { return Color.black }
    override var textPosition: NSTextAlignment { return .left }
}
