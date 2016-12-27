//
//  ContactsAdapter.swift
//  robots
//
//  Created by TeeDee on 27.12.16.
//  Copyright © 2016 teedee. All rights reserved.
//

import UIKit

class ContactsAdapter: NSObject {
    
    // MARK: Constants
    
    fileprivate let collectionViewCell = String(describing: ContactsCollectionViewCell.self)
    
    // MARK: Properties
    
    private var collectionView: UICollectionView
    fileprivate var items: [Contact]
    var block: ContactBlock?
    
    // MARK: Initialization and deinitialization
    
    init(collectionView: UICollectionView, items: [Contact]) {
        self.collectionView = collectionView
        self.items = items
        collectionView.register(UINib(nibName: collectionViewCell, bundle: nil), forCellWithReuseIdentifier: collectionViewCell)
    }
}

// MARK: UICollectionViewDataSource

extension ContactsAdapter: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: collectionViewCell, for: indexPath) as! ContactsCollectionViewCell
        cell.configure(withContact: items[indexPath.row])
        return cell
    }
}

// MARK: UICollectionViewDelegate

extension ContactsAdapter: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        block?(items[indexPath.row])
    }
}
