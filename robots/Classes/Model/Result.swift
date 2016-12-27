//
//  Result.swift
//  robots
//
//  Created by TeeDee on 27.12.16.
//  Copyright © 2016 teedee. All rights reserved.
//

import Foundation

public enum Result<T> {
    case value(T)
    case error(Swift.Error)
}
