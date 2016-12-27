//
//  ContactInfoModuleInput.swift
//  helpme
//
//  Created by TeeDee on 28/12/2016.
//  Copyright © 2016 TeeDee. All rights reserved.
//

protocol ContactInfoModuleInput: class, ViperModuleInput {

	/** Method for configure module
     - parameter contact: Contact object
     */
    
    func configureModule(withContact contact: Contact)
}
