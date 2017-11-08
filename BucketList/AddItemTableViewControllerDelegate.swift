//
//  AddItemTableViewControllerDelegate.swift
//  BucketList
//
//  Created by Tiffani Fox on 11/7/17.
//  Copyright © 2017 Tiffani Fox. All rights reserved.
//

import Foundation
protocol AddItemTableViewControllerDelegate: class {
    func itemSaved(by controller: AddItemViewController, with text:String, at indexPath: NSIndexPath?)
    func cancelButtonPressed(by controller : AddItemViewController)
    
}
