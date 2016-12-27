//
//  FullnameLabel.swift
//  robots
//
//  Created by TeeDee on 27.12.16.
//  Copyright © 2016 teedee. All rights reserved.
//

import UIKit

@IBDesignable
class FullnameLabel: Label {
    override var labelFont: UIFont { return Font.fullnameLabel }
    override var labelColor: UIColor { return Color.black }
    override var textPosition: NSTextAlignment { return .center }
}
