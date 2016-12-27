//
//  ContactInfoAdapter.swift
//  robots
//
//  Created by TeeDee on 28.12.16.
//  Copyright © 2016 teedee. All rights reserved.
//

import UIKit

class ContactInfoAdapter: NSObject {
    
    // MARK: Constants
    
    fileprivate let tableViewCell = String(describing: ContactInfoTableViewCell.self)
    
    // MARK: Properties
    
    fileprivate var contact: Contact
    private var tableView: UITableView
    var phoneBlock: StringBlock?
    var emailBlock: StringBlock?
    
    // MARK: Initialization and deinitialization
    
    init(tableView: UITableView, contact: Contact) {
        self.tableView = tableView
        self.contact = contact
        tableView.register(UINib(nibName: tableViewCell, bundle: nil), forCellReuseIdentifier: tableViewCell)
    }
}

// MARK: UITableViewDataSource

extension ContactInfoAdapter: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: tableViewCell, for: indexPath) as! ContactInfoTableViewCell
        switch indexPath.row {
            case 0:
                cell.configure(withText: contact.phone)
                cell.isUserInteractionEnabled = true
            case 1:
                cell.configure(withText: contact.email)
                cell.isUserInteractionEnabled = true
            case 2:
                cell.configure(withText: contact.address)
                cell.isUserInteractionEnabled = false
            case 3:
                cell.configure(withText: contact.company)
                cell.isUserInteractionEnabled = false
            case 4:
                cell.configure(withText: contact.info)
                cell.isUserInteractionEnabled = false
            default: break
        }
        return cell
    }
}

// MARK: UITableViewDataDelegate

extension ContactInfoAdapter: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        switch indexPath.row {
            case 0: phoneBlock?(contact.phone)
            case 1: emailBlock?(contact.email)
        default: break
        }
    }
}
