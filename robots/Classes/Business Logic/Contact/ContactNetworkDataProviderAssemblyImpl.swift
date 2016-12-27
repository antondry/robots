//
//  ContactNetworkDataProviderAssemblyImpl.swift
//  helpme
//
//  Created by TeeDee on 27/12/2016.
//  Copyright © 2016 TeeDee. All rights reserved.
//

import Foundation

class ContactNetworkDataProviderAssemblyImpl: ContactNetworkDataProviderAssembly {
    static func networkDataProvider() -> ContactDataProvider {
        return ContactNetworkDataProvider(transport: transport(), deserializer: deserializer(), mapper: mapper())
    }
    
    private static func transport() -> Transport {
        return TransportImpl()
    }
    
    private static func deserializer() -> Deserializer {
        return JSONDeserializer()
    }
    
    private static func mapper() -> ContactMapper {
        return ContactMapperImpl()
    }
}
