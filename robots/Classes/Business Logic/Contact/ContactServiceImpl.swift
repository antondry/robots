//
//  ContactServiceImpl.swift
//  helpme
//
//  Created by TeeDee on 27/12/2016.
//  Copyright © 2016 TeeDee. All rights reserved.
//

import Foundation

class ContactServiceImpl: ContactService {
    
    // MARK: Constants
    
    private let networkDataProvider: ContactDataProvider
    
    // MARK: Initialization and deinitialization
    
    init(networkDataProvider: ContactDataProvider) {
        self.networkDataProvider = networkDataProvider
    }
    
    // MARK: ContactService
    
    func getAll(_ completionBlock: @escaping ContactsResultBlock) {
        networkDataProvider.getAll { result in
            completionBlock(result)
        }
    }
}
