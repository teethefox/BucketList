//
//  ViewController.swift
//  BucketList
//
//  Created by Tiffani Fox on 11/6/17.
//  Copyright © 2017 Tiffani Fox. All rights reserved.
//

import UIKit

class BucketListViewController: UITableViewController, AddItemTableViewControllerDelegate {
    func itemSaved(by controller: AddItemViewController, with text: String, at indexPath: NSIndexPath?) {
        print("\(text)")
        if let ip = indexPath{
            items[(indexPath?.row)!] = text
        }
        else{
            items.append(text)}
        tableView.reloadData()
        dismiss(animated: true, completion: nil)
        
    }
    
    func cancelButtonPressed(by controller: AddItemViewController) {
        dismiss(animated: true, completion: nil)
    }
    
    var items = ["Sky diving", "Live in Hawaii"]
    override func viewDidLoad() {
    super.viewDidLoad()
        print("loaded")
    // Do any additional setup after loading the view, typically from a nib.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddItems"{
            let navigationController = segue.destination as! UINavigationController
            let controller = navigationController.topViewController as! AddItemViewController
            controller.delegate = self}
        else if segue.identifier == "EditItems"{
            let navigationController = segue.destination as! UINavigationController
            let controller = navigationController.topViewController as! AddItemViewController
            controller.delegate = self
            let indexPath = sender as! NSIndexPath
            let item = items[indexPath.row]
            controller.item = item
            controller.indexPath = indexPath
        }
    }
        
    override func tableView(_ tableView: UITableView, didSelectRowAt indexpath: IndexPath){
       print("selected")
    }
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        items.remove(at: indexPath.row)
        tableView.reloadData()
    }
    override func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) {
        performSegue(withIdentifier: "EditItems", sender: indexPath)
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // dequeue the cell from our storyboard
let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
       
        cell.textLabel?.text = items[indexPath.row]
       
        return cell
    }
   

    

}

