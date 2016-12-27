//
//  ContactInfoRouter.swift
//  helpme
//
//  Created by TeeDee on 28/12/2016.
//  Copyright © 2016 TeeDee. All rights reserved.
//

import UIKit

class ContactInfoRouter: ContactInfoRouterInput {

	// MARK: Properties
    
    weak var viewController: ViperModuleTransitionHandler?
    private var mailer: Mailer?

    // MARK: ContactInfoRouterInput
    
    func callPhone(withPhone phone: String) { PhoneCaller.callPhone(phone: phone) }
    
    func sendEmail(withEmail email: String) {
        mailer = Mailer(to: email)
        if let vc = viewController as? UIViewController { mailer?.presentOverViewController(vc) }
    }
}
