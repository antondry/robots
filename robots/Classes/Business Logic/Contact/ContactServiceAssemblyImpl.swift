//
//  ContactServiceAssemblyImpl.swift
//  helpme
//
//  Created by TeeDee on 27/12/2016.
//  Copyright © 2016 TeeDee. All rights reserved.
//

import Foundation

class ContactServiceAssemblyImpl: ContactServiceAssembly {
    
    static func service() -> ContactService {
        return ContactServiceImpl(networkDataProvider: networkDataProvider())
    }
    
    private static func networkDataProvider() -> ContactDataProvider {
        return ContactNetworkDataProviderAssemblyImpl.networkDataProvider()
    }
}
