//
//  ContactMapperImpl.swift
//  helpme
//
//  Created by TeeDee on 27/12/2016.
//  Copyright © 2016 TeeDee. All rights reserved.
//

import Foundation

class ContactMapperImpl: MapperImpl, ContactMapper {
    func map(modelDictionary: ModelDictionary) throws -> Contact {
        let id = try modelDictionary.map(JSONKey.Contact.id) as Int
        let firstName = try modelDictionary.map(JSONKey.Contact.firstName) as String
        let lastName = try modelDictionary.map(JSONKey.Contact.lastName) as String
        let info = try modelDictionary.map(JSONKey.Contact.info) as String
        let phone = try modelDictionary.map(JSONKey.Contact.phone) as String
        let email = try modelDictionary.map(JSONKey.Contact.email) as String
        let address = try modelDictionary.map(JSONKey.Contact.address) as String
        let company = try modelDictionary.map(JSONKey.Contact.company) as String
        let photo = try modelDictionary.map(JSONKey.Contact.photo) as String
        return Contact(id: id, firstName: firstName, lastName: lastName, info: info, phone: phone, email: email, address: address, company: company, photo: photo)
    }
    
    func mapAll(modelDictionaries: [ModelDictionary]) throws -> [Contact] {
        return try modelDictionaries.map { try map(modelDictionary: $0) }
    }
}
