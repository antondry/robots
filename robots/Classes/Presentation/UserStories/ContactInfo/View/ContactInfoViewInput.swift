//
//  ContactInfoViewInput.swift
//  helpme
//
//  Created by TeeDee on 28/12/2016.
//  Copyright © 2016 TeeDee. All rights reserved.
//

protocol ContactInfoViewInput: class {

    /** Method for setup view
     - parameter contact: Contact object
     */
    
    func setupView(withContact contact: Contact)
}
