//
//  ViewController.swift
//  To Do
//
//  Created by Jack on 3/23/16.
//  Copyright © 2016 Jack. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet var tableView: UITableView!
    
    
    
    @IBOutlet var textField: UITextField!
    var items = [String]()

    @IBAction func addToDo(sender: AnyObject) {
        
        let newItem = textField.text
        items.append(newItem!)
        textField.resignFirstResponder()
        textField.text = ""
        tableView.reloadData()
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        
        return items.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        
        cell.textLabel?.text = items[indexPath.row]
        
        return cell
        
    }
    
    
    // select an item
    
    func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
        let selectedRow = tableView.cellForRowAtIndexPath(indexPath)!
        if selectedRow.accessoryType == UITableViewCellAccessoryType.None {
            selectedRow.accessoryType = UITableViewCellAccessoryType.Checkmark
            selectedRow.tintColor = UIColor.greenColor()
            
        }else{
            selectedRow.accessoryType = UITableViewCellAccessoryType.None
        }
        
    }
    
    
    // delete an item
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        let deletedRow:UITableViewCell = tableView.cellForRowAtIndexPath(indexPath)!
        
        if(editingStyle == UITableViewCellEditingStyle.Delete){
            items.removeAtIndex(indexPath.row)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Automatic)
            deletedRow.accessoryType = UITableViewCellAccessoryType.None
        
        
        }// end if
        
    }// end delete an item method
    
}

