//
//  DataProvider.swift
//  robots
//
//  Created by TeeDee on 27.12.16.
//  Copyright © 2016 teedee. All rights reserved.
//

import Foundation

protocol DataProvider { }

extension DataProvider {
    func performInBackground(_ block: @escaping () -> ()) {
        OperationQueue().addOperation { block() }
    }
    func performOnMainThread(_ block: @escaping () -> ()) {
        OperationQueue.main.addOperation { block() }
    }
}
