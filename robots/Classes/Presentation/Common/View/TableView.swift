//
//  TableView.swift
//  robots
//
//  Created by TeeDee on 28.12.16.
//  Copyright © 2016 teedee. All rights reserved.
//

import UIKit

class TableView: UITableView {
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        backgroundColor = Color.white
        separatorStyle = .none
        rowHeight = UITableViewAutomaticDimension
        estimatedRowHeight = 200
    }
}
