//
//  ContactsViewOutput.swift
//  helpme
//
//  Created by TeeDee on 27/12/2016.
//  Copyright © 2016 TeeDee. All rights reserved.
//

protocol ContactsViewOutput {

    /** Notify presenter that view is ready
    */

    func setupView()
    
    /** Notify presenter that user tap on cell
     - parameter contact: contact
     */
    
    func didTapOnItem(withContact contact: Contact)
}
