//
//  AddItemViewController.swift
//  BucketList
//
//  Created by Tiffani Fox on 11/7/17.
//  Copyright © 2017 Tiffani Fox. All rights reserved.
//

import UIKit

class AddItemViewController: UITableViewController {
    weak var delegate: AddItemTableViewControllerDelegate?

    var item: String?
    var indexPath: NSIndexPath?
    
    @IBOutlet weak var itemTextField: UITextField!
    @IBAction func cancelButtonPressed(_ sender: UIBarButtonItem) {
        delegate?.cancelButtonPressed(by:self)
        print("cancel")
    }
    
    @IBAction func itemSaved(_ sender: UIBarButtonItem) {
        delegate?.itemSaved(by: self, with: itemTextField.text!, at: indexPath)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        itemTextField.text = item
    }
    
}
