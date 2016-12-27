//
//  Contact.swift
//  robots
//
//  Created by TeeDee on 27.12.16.
//  Copyright © 2016 teedee. All rights reserved.
//

import Foundation

struct Contact {
    let id: Int
    let firstName: String
    let lastName: String
    let info: String
    let phone: String
    let email: String
    let address: String
    let company: String
    let photo: String
    
    var fullName: String { return firstName + " " + lastName }
}
