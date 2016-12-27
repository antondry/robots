//
//  ContactsViewInput.swift
//  helpme
//
//  Created by TeeDee on 27/12/2016.
//  Copyright © 2016 TeeDee. All rights reserved.
//

protocol ContactsViewInput: class, ViperModuleRequestViewInput {

    /** Method for show title string
     - parameter title: title string
     */
    
    func showTitle(_ title: String)
    
    /** Method for init view
     - parameter contacts: array of Contact objects
     */
    
    func setupView(withContacts contacts: [Contact])
}
