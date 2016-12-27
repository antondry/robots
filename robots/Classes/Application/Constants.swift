//
//  Constants.swift
//  robots
//
//  Created by TeeDee on 27.12.16.
//  Copyright © 2016 teedee. All rights reserved.
//

import Foundation

typealias ModelDictionary = [String: Any]

let requestURL = "https://agency5-mobile-school.firebaseio.com/data.json"

struct SegueID {
    static let contactInfo = "ShowContactInfo"
}

struct JSONKey {
    struct Contact {
        static let id = "id"
        static let firstName = "first_name"
        static let lastName = "last_name"
        static let info = "about"
        static let phone = "phone"
        static let email = "email"
        static let address = "address"
        static let company = "company"
        static let photo = "photo"
    }
}
