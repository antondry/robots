//
//  ContactsModuleConfigurator.swift
//  helpme
//
//  Created by TeeDee on 27/12/2016.
//  Copyright © 2016 TeeDee. All rights reserved.
//

import UIKit

class ContactsModuleConfigurator {

    // MARK: Iternal Helpers

    func configureModule<UIViewController>(forViewInput viewInput: UIViewController) {
        if let viewController = viewInput as? ContactsViewController {
            configure(viewController: viewController)
        }
    }

    // MARK: Private helpers

    private func configure(viewController: ContactsViewController) {
        let router = ContactsRouter()
        let presenter = ContactsPresenter()
        let interactor = ContactsInteractor()

        presenter.view = viewController
        presenter.router = router
        presenter.interactor = interactor
        interactor.output = presenter
        interactor.contactService = ContactServiceAssemblyImpl.service()
        viewController.output = presenter
        router.viewController = viewController
    }

}
