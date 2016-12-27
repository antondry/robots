//
//  Blocks.swift
//  robots
//
//  Created by TeeDee on 27.12.16.
//  Copyright © 2016 teedee. All rights reserved.
//

import Foundation

/// Segue configuration block with Module Input parameter.
typealias ConfigurationBlock = (ViperModuleInput) -> (ViperModuleOutput?)

/// Operation result block with array of Contact parameter
typealias ContactsResultBlock = (Result<[Contact]>) -> ()

/// Item clicked block with Contact parameter.
typealias ContactBlock = (Contact) -> ()

/// Item clicked block with String parameter.
typealias StringBlock = (String) -> ()
