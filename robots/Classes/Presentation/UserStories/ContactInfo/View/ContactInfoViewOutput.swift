//
//  ContactInfoViewOutput.swift
//  helpme
//
//  Created by TeeDee on 28/12/2016.
//  Copyright © 2016 TeeDee. All rights reserved.
//

protocol ContactInfoViewOutput {

    /** Notify presenter that view is ready
    */

    func setupView()
    
    /** Notify presenter that user tap on phone cell
     - parameter phone: phone number
     */
    
    func didTapOnPhone(withPhone phone: String)
    
    /** Notify presenter that user tap on email cell
     - parameter email: email address
     */
    
    func didTapOnEmail(withEmail email: String)
}
