//
//  ContactDataProvider.swift
//  helpme
//
//  Created by TeeDee on 27/12/2016.
//  Copyright © 2016 TeeDee. All rights reserved.
//

import Foundation

protocol ContactDataProvider: DataProvider {
    func getAll(completionBlock: @escaping ContactsResultBlock)
}
