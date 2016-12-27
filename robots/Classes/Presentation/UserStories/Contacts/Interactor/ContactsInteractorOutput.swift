//
//  ContactsInteractorOutput.swift
//  helpme
//
//  Created by TeeDee on 27/12/2016.
//  Copyright © 2016 TeeDee. All rights reserved.
//

import Foundation

protocol ContactsInteractorOutput: class {
    
    /** Send contacts to Presenter
     - parameter contacts: Array of Contact objects
     */
    
    func didGetContacts(withContacts contacts: [Contact])
}
