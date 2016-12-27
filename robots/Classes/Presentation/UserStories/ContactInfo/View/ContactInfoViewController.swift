//
//  ContactInfoViewController.swift
//  helpme
//
//  Created by TeeDee on 28/12/2016.
//  Copyright © 2016 TeeDee. All rights reserved.
//

import UIKit

class ContactInfoViewController: ViperModuleViewController, ContactInfoViewInput {
    
    // MARK: IBOutlets

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    
	// MARK: Properties
	
    var output: ContactInfoViewOutput!
    private var adapter: ContactInfoAdapter?

    // MARK: UIViewController

    override func viewDidLoad() {
        super.viewDidLoad()
        output.setupView()
    }

    // MARK: ContactInfoViewInput

    func setupView(withContact contact: Contact) {
        title = contact.fullName
        imageView.setImageWithURLString(contact.photo, placeholderImage: nil)
        nameLabel.text = contact.firstName
        lastNameLabel.text = contact.lastName
        let adapter = ContactInfoAdapter(tableView: tableView, contact: contact)
        adapter.phoneBlock = { [weak self] phone in self?.output.didTapOnPhone(withPhone: phone) }
        adapter.emailBlock = { [weak self] email in self?.output.didTapOnEmail(withEmail: email) }
        tableView.dataSource = adapter
        tableView.delegate = adapter
        self.adapter = adapter
    }
}
