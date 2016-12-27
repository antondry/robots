//
//  Dictionary+Parsing.swift
//  robots
//
//  Created by TeeDee on 27.12.16.
//  Copyright © 2016 teedee. All rights reserved.
//

import Foundation

extension Dictionary where Key: CustomStringConvertible {
    func map<T>(_ fieldName: Key) throws -> T {
        guard let t = self[fieldName] as? T else {
            throw Errors.expected(argument: fieldName.description, ofType: String(describing: T.self))
        }
        return t
    }
}
