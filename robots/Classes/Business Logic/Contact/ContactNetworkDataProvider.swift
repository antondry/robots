//
//  ContactNetworkDataProvider.swift
//  helpme
//
//  Created by TeeDee on 27/12/2016.
//  Copyright © 2016 TeeDee. All rights reserved.
//

import Foundation

class ContactNetworkDataProvider: ContactDataProvider {
    
    // MARK: Contact 
    
    let transport: Transport
    
    let deserializer: Deserializer
    
    let mapper: ContactMapper
    
    // MARK: Initialization and deinitialization
    
    init(transport: Transport, deserializer: Deserializer, mapper: ContactMapper) {
        self.transport = transport
        self.deserializer = deserializer
        self.mapper = mapper
    }
    
    // MARK: ContactDataProvider

    func getAll(completionBlock: @escaping ContactsResultBlock) {
        performInBackground { [weak self] in
            if let request = ContactRequest.getAll.urlRequest {
                self?.transport.request(request) { [weak self] result in
                    self?.handleTransportResult(result, completionBlock: completionBlock)
                }
            }
        }
    }
    
    // MARK: Private helpers
    
    private func handleTransportResult(_ result: Result<Data>, completionBlock: @escaping ContactsResultBlock) {
        switch result {
        case .value(let data): handleTransportData(data, completionBlock: completionBlock)
        case .error(let error): performOnMainThread { completionBlock(Result.error(error)) }
        }
    }
    
    private func handleTransportData(_ data: Data, completionBlock: @escaping ContactsResultBlock) {
        do {
            let deserealizedData = try deserializer.deserialize(data)
            let dataResponse = try mapper.mapResponse(deserealizedData)
            let posters = try mapper.mapAll(modelDictionaries: dataResponse.data)
            performOnMainThread { completionBlock(Result.value(posters)) }
        } catch {
            performOnMainThread { completionBlock(Result.error(error)) }
        }
    }
}
