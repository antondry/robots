//
//  WhiteRoundedCollectionViewCell.swift
//  robots
//
//  Created by TeeDee on 28.12.16.
//  Copyright © 2016 teedee. All rights reserved.
//

import UIKit

@IBDesignable
class WhiteRoundedCollectionViewCell: CollectionViewCell {
    override var viewBackgroundColor: UIColor { return Color.white }
    override var cornerRadius: CGFloat { return 12 }
    override var masksToBounds: Bool { return true }
}
