//
//  Request.swift
//  robots
//
//  Created by TeeDee on 27.12.16.
//  Copyright © 2016 teedee. All rights reserved.
//

import Foundation
import Alamofire

typealias RequestMethod = Alamofire.HTTPMethod

protocol Request: URLRequestConvertible {
    var path: String { get }
    var method: RequestMethod { get }
    var headers: [String: String]? { get }
    var parameters: ModelDictionary? { get }
}

// MARK: URLRequestConvertible
extension Request  {
    func asURLRequest() throws -> URLRequest {
        let url = try path.asURL()
        var request = URLRequest(url: url)
        request.httpMethod = method.rawValue
        if let headers = headers {
            for (key, value) in headers { request.addValue(value, forHTTPHeaderField: key) }
        }
        return try URLEncoding.default.encode(request, with: parameters)
    }
}
