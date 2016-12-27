//
//  Errors.swift
//  robots
//
//  Created by TeeDee on 27.12.16.
//  Copyright © 2016 teedee. All rights reserved.
//

import Foundation

enum Errors: Error {
    case invalidJSON
    case expected(argument: String, ofType: String)
}
