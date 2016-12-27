//
//  ContactRequest.swift
//  helpme
//
//  Created by TeeDee on 27/12/2016.
//  Copyright © 2016 TeeDee. All rights reserved.
//

import Foundation

enum ContactRequest: Request {
    
    case getAll
    
    var path: String {
        switch self {
            case .getAll: return requestURL
        }
    }
    
    var method: RequestMethod {
        switch self {
            case .getAll: return .get
        }
    }
    
    var headers: [String : String]? {
        switch self {
            case .getAll: return nil
        }
    }
    
    var parameters: ModelDictionary? {
        switch self {
            case .getAll: return nil
        }
    }
}
