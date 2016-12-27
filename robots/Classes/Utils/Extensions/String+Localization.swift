//
//  String+Localization.swift
//  robots
//
//  Created by TeeDee on 27.12.16.
//  Copyright © 2016 teedee. All rights reserved.
//

import Foundation

extension String {
    var localized: String { return NSLocalizedString(self, comment: "") }
}
