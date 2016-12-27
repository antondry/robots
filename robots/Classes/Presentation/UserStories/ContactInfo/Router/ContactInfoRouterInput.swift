//
//  ContactInfoRouterInput.swift
//  helpme
//
//  Created by TeeDee on 28/12/2016.
//  Copyright © 2016 TeeDee. All rights reserved.
//

import Foundation

protocol ContactInfoRouterInput {

    /** Method for phone call
     - parameter phone: phone number
     */
    
    func callPhone(withPhone phone: String)
    
    /** Method for send email
     - parameter email: email
     */
    
    func sendEmail(withEmail email: String)
}
