//
//  ContactInfoModuleInitializer.swift
//  helpme
//
//  Created by TeeDee on 28/12/2016.
//  Copyright © 2016 TeeDee. All rights reserved.
//

import UIKit

class ContactInfoModuleInitializer: NSObject {

	// MARK: IBOutlets
    
    @IBOutlet weak var contactinfoViewController: ContactInfoViewController!

    // MARK: NSObject UIKit Additions
    
    override func awakeFromNib() {
        let configurator = ContactInfoModuleConfigurator()
        configurator.configureModule(forViewInput: contactinfoViewController)
    }

}
