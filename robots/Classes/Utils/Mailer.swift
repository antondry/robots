//
//  Mailer.swift
//  robots
//
//  Created by TeeDee on 28.12.16.
//  Copyright © 2016 teedee. All rights reserved.
//

import UIKit
import MessageUI

class Mailer: NSObject {
    
    fileprivate let mailComposer = MFMailComposeViewController()
    
    init(to: String) {
        super.init()
        mailComposer.mailComposeDelegate = self
        var email = ""
        if (to.range(of: "\n") != nil) {
            let endIndex = to.index(of: "\n")
            let range = to.index(to.startIndex, offsetBy: 0)..<endIndex!
            email = String(to[range])
        } else {
            email = to
        }
        mailComposer.setToRecipients([email])
        mailComposer.setSubject("")
        mailComposer.setMessageBody("", isHTML: false)
    }
    
    func presentOverViewController(_ viewController: UIViewController) {
        if MFMailComposeViewController.canSendMail() {
            viewController.present(mailComposer, animated: true, completion: nil)
        }
    }
}

// MARK: MFMailComposeViewControllerDelegate methods
extension Mailer: MFMailComposeViewControllerDelegate {
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true, completion: nil)
    }
}
