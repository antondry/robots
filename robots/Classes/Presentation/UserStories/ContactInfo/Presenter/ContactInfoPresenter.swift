//
//  ContactInfoPresenter.swift
//  helpme
//
//  Created by TeeDee on 28/12/2016.
//  Copyright © 2016 TeeDee. All rights reserved.
//

class ContactInfoPresenter: ContactInfoModuleInput, ContactInfoViewOutput {

    // MARK: Properties
    
    weak var view: ContactInfoViewInput!
    var router: ContactInfoRouterInput!
    private var contact: Contact?

    // MARK: ContactInfoViewOutput

    func setupView() {
        if let contact = contact {
            view.setupView(withContact: contact)
        }
    }
    
    func didTapOnPhone(withPhone phone: String) { router.callPhone(withPhone: phone) }

    func didTapOnEmail(withEmail email: String) { router.sendEmail(withEmail: email) }
    
    // MARK: ContactInfoModuleInput
    
    func configureModule(withContact contact: Contact) { self.contact = contact }
}
