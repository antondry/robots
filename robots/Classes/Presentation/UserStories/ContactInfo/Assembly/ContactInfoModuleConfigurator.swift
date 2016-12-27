//
//  ContactInfoModuleConfigurator.swift
//  helpme
//
//  Created by TeeDee on 28/12/2016.
//  Copyright © 2016 TeeDee. All rights reserved.
//

import UIKit

class ContactInfoModuleConfigurator {

    // MARK: Iternal Helpers

    func configureModule<UIViewController>(forViewInput viewInput: UIViewController) {
        if let viewController = viewInput as? ContactInfoViewController {
            configure(viewController: viewController)
        }
    }

    // MARK: Private helpers

    private func configure(viewController: ContactInfoViewController) {
        let router = ContactInfoRouter()
        let presenter = ContactInfoPresenter()

        presenter.view = viewController
        presenter.router = router
        viewController.output = presenter
        router.viewController = viewController
        viewController.moduleInput = presenter
    }

}
