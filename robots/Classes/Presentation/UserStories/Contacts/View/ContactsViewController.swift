//
//  ContactsViewController.swift
//  helpme
//
//  Created by TeeDee on 27/12/2016.
//  Copyright © 2016 TeeDee. All rights reserved.
//

import UIKit

class ContactsViewController: ViperModuleViewController, ContactsViewInput {
    
    // MARK: IBOutlets

    @IBOutlet weak var collectionView: UICollectionView!
    
	// MARK: Properties
	
    var output: ContactsViewOutput!
    private var adapter: ContactsAdapter?

    // MARK: UIViewController

    override func viewDidLoad() {
        super.viewDidLoad()
        output.setupView()
    }

    // MARK: ContactsViewInput

    func showTitle(_ title: String) { self.title = title }
    
    func setupView(withContacts contacts: [Contact]) {
        let adapter = ContactsAdapter(collectionView: collectionView, items: contacts)
        collectionView.dataSource = adapter
        collectionView.delegate = adapter
        adapter.block = { [weak self] contact in self?.output.didTapOnItem(withContact: contact) }
        self.adapter = adapter
    }
}
