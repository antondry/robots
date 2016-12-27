//
//  MapperImpl.swift
//  robots
//
//  Created by TeeDee on 27.12.16.
//  Copyright © 2016 teedee. All rights reserved.
//

import Foundation

class MapperImpl {
    final func mapResponse(_ modelDictionary: ModelDictionary) throws -> Response {
        let data = try modelDictionary.map("items") as [ModelDictionary]
        return Response(data: data)
    }
}
