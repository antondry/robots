//
//  JSONDeserializer.swift
//  robots
//
//  Created by TeeDee on 27.12.16.
//  Copyright © 2016 teedee. All rights reserved.
//

import Foundation

class JSONDeserializer: Deserializer {
    func deserialize(_ data: Data) throws -> ModelDictionary {
        let json = try JSONSerialization.jsonObject(with: data, options: [])
        guard let modelDictionary = json as? ModelDictionary else {
            throw Errors.invalidJSON
        }
        return modelDictionary
    }
}
