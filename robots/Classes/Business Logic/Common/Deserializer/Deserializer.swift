//
//  Deserializer.swift
//  robots
//
//  Created by TeeDee on 27.12.16.
//  Copyright © 2016 teedee. All rights reserved.
//

import Foundation

protocol Deserializer {
    func deserialize(_ data: Data) throws -> ModelDictionary
}
