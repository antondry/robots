//
//  TransportImpl.swift
//  robots
//
//  Created by TeeDee on 27.12.16.
//  Copyright © 2016 teedee. All rights reserved.
//

import Foundation
import Alamofire

class TransportImpl: Transport {
    
    let manager: Alamofire.SessionManager
    
    init() {
        let configuration = URLSessionConfiguration.default
        configuration.timeoutIntervalForResource = 5
        manager = Alamofire.SessionManager(
            configuration: configuration,
            serverTrustPolicyManager: nil
        )
    }
    
    func request(_ request: URLRequest, completionBlock: @escaping (Result<Data>) -> ()) {
        manager.request(request).responseData { response in
            switch response.result {
            case .success(let value): completionBlock(Result.value(value))
            case .failure(let error): completionBlock(Result.error(error))
            }
        }
    }
}
