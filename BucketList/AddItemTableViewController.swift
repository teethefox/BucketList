//
//  AddItemTableViewController.swift
//  BucketList
//
//  Created by Tiffani Fox on 11/7/17.
//  Copyright © 2017 Tiffani Fox. All rights reserved.
//

import UIKit
class AddItemTableViewController: UITableViewController {
    // ...
    
    weak var delegate: CancelButtonDelegate?
    @IBAction func cancelBarButtonPressed(_ sender: UIBarButtonItem) {
        delegate?.cancelButtonPressed(by: self)
    }
    // ...
}
