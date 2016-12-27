//
//  ContactsModuleInitializer.swift
//  helpme
//
//  Created by TeeDee on 27/12/2016.
//  Copyright © 2016 TeeDee. All rights reserved.
//

import UIKit

class ContactsModuleInitializer: NSObject {

	// MARK: IBOutlets
    
    @IBOutlet weak var contactsViewController: ContactsViewController!

    // MARK: NSObject UIKit Additions
    
    override func awakeFromNib() {
        let configurator = ContactsModuleConfigurator()
        configurator.configureModule(forViewInput: contactsViewController)
    }

}
