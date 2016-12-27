//
//  ContactMapper.swift
//  helpme
//
//  Created by TeeDee on 27/12/2016.
//  Copyright © 2016 TeeDee. All rights reserved.
//

import Foundation

protocol ContactMapper: Mapper {
    func map(modelDictionary: ModelDictionary) throws -> Contact
    func mapAll(modelDictionaries: [ModelDictionary]) throws -> [Contact]
}
