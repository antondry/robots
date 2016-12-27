//
//  ContactsInteractor.swift
//  helpme
//
//  Created by TeeDee on 27/12/2016.
//  Copyright © 2016 TeeDee. All rights reserved.
//

class ContactsInteractor: ContactsInteractorInput {

    // MARK: Properties

    weak var output: ContactsInteractorOutput!
    var contactService: ContactService?

    // MARK: ContactsInteractorInput
    
    func getContacts() {
        contactService?.getAll { [weak self] result in self?.didGetAllContactsResult(result) }
    }
    
    // MARK: Private helpers

    private func didGetAllContactsResult(_ result: Result<[Contact]>) {
        switch result {
        case .value(let companies): didGetAllContacts(companies)
        case .error(let error): didGetAllContactsError(error)
        }
    }
    
    private func didGetAllContacts(_ contacts: [Contact]) {
        output.didGetContacts(withContacts: contacts)
    }
    
    private func didGetAllContactsError(_ error: Error) { print(error) }
}
