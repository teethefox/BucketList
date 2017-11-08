//
//  add.swift
//  BucketList
//
//  Created by Tiffani Fox on 11/7/17.
//  Copyright © 2017 Tiffani Fox. All rights reserved.
//

import UIKit
protocol AddItemViewControllerDelegate: class {
    func addItemViewController(_ controller: AddItemViewController, didFinishAddingItem item: String)
    func addItemViewController(_ controller: AddItemViewController, didPressCancelButton button: UIBarButtonItem) // Taken from CancelButtonDelegate file, and altered to match pattern.
    // NOTE: You will need to update AddItemTableViewController to make the Cancel Button work
}
