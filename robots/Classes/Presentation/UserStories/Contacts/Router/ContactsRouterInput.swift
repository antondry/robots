//
//  ContactsRouterInput.swift
//  helpme
//
//  Created by TeeDee on 27/12/2016.
//  Copyright © 2016 TeeDee. All rights reserved.
//

import Foundation

protocol ContactsRouterInput {

	/** Method for transition to other module
     - parameter contact: Contact object
     */
    
    func openModule(withContact contact: Contact)
}
