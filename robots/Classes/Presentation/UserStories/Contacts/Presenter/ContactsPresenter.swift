//
//  ContactsPresenter.swift
//  helpme
//
//  Created by TeeDee on 27/12/2016.
//  Copyright © 2016 TeeDee. All rights reserved.
//

class ContactsPresenter: ContactsViewOutput, ContactsInteractorOutput {

    // MARK: Properties
    
    weak var view: ContactsViewInput!
    var interactor: ContactsInteractorInput!
    var router: ContactsRouterInput!

    // MARK: ContactsViewOutput

    func setupView() {
        view.showTitle("TITLE.CONTACTS".localized)
        view.startRequest()
        interactor.getContacts()
    }
    
    func didTapOnItem(withContact contact: Contact) { router.openModule(withContact: contact) }

    // MARK: ContactsInteractorOutput 
    
    func didGetContacts(withContacts contacts: [Contact]) {
        view.endRequest()
        view.setupView(withContacts: contacts)
    }
}
