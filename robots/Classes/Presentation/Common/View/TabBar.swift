//
//  TabBar.swift
//  robots
//
//  Created by TeeDee on 28.12.16.
//  Copyright © 2016 teedee. All rights reserved.
//

import UIKit

@IBDesignable
class TabBar: UITabBar {
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        tintColor = Color.white
        barTintColor = Color.blue
        backgroundColor = Color.blue
        shadowImage = UIImage()
        backgroundImage = UIImage()
    }
}
