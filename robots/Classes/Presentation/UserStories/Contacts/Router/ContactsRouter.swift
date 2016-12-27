//
//  ContactsRouter.swift
//  helpme
//
//  Created by TeeDee on 27/12/2016.
//  Copyright © 2016 TeeDee. All rights reserved.
//

class ContactsRouter: ContactsRouterInput {

	// MARK: Properties
    
    weak var viewController: ViperModuleTransitionHandler?

    // MARK: ContactsRouterInput
    
    func openModule(withContact contact: Contact) {
        viewController?.openModule(SegueID.contactInfo, configurationBlock: { moduleInput in
            (moduleInput as? ContactInfoModuleInput)?.configureModule(withContact: contact)
            return nil
        })
    }
}
