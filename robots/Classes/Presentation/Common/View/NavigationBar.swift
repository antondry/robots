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
        titleTextAttributes = convertToOptionalNSAttributedStringKeyDictionary([NSAttributedString.Key.foregroundColor.rawValue: Color.white])
        setBackgroundImage(UIImage(), for: .default)
        shadowImage = UIImage()
        backgroundColor = Color.blue
        barTintColor = Color.blue
        barStyle = .blackOpaque
    }
}

// Helper function inserted by Swift 4.2 migrator.
fileprivate func convertToOptionalNSAttributedStringKeyDictionary(_ input: [String: Any]?) -> [NSAttributedString.Key: Any]? {
	guard let input = input else { return nil }
	return Dictionary(uniqueKeysWithValues: input.map { key, value in (NSAttributedString.Key(rawValue: key), value)})
}
