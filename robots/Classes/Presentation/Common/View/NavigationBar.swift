//
//  NavigationBar.swift
//  robots
//
//  Created by TeeDee on 28.12.16.
//  Copyright © 2016 teedee. All rights reserved.
//

import UIKit

@IBDesignable
class NavigationBar: UINavigationBar {
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        isTranslucent = false
        tintColor = Color.white
        titleTextAttributes = [NSForegroundColorAttributeName: Color.white]
        setBackgroundImage(UIImage(), for: .default)
        shadowImage = UIImage()
        backgroundColor = Color.blue
        barTintColor = Color.blue
        barStyle = .blackOpaque
    }
}
