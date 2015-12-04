//
//  ToDoListVIewController.swift
//  ToDoList
//
//  Created by iosdevlog on 15/12/4.
//  Copyright © 2015年 iosdevlog. All rights reserved.
//

import UIKit

class ToDoListVIewController: UITableViewController {

    var toDoItems = [ToDoItem]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.loadInitialData()
    }
    
    func loadInitialData() {
        let item1 = ToDoItem()
        item1.itemName = "Buy milk"
        self.toDoItems.append(item1)
        
        let item2 = ToDoItem()
        item2.itemName = "Buy eggs"
        self.toDoItems.append(item2)
        
        let item3 = ToDoItem()
        item3.itemName = "Read a book"
        self.toDoItems.append(item3)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.toDoItems.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("ListPrototypeCell", forIndexPath: indexPath)
        
        // Configure the cell...
        let toDoItem = self.toDoItems[indexPath.row]
        cell.textLabel?.text = toDoItem.itemName
        
        cell.accessibilityValue = String(toDoItem.completed)
        
        if toDoItem.completed {
            cell.accessoryType = .Checkmark
        } else {
            cell.accessoryType = .None
        }

        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: false)
        
        let tappedItem = self.toDoItems[indexPath.row]
        tappedItem.completed = !tappedItem.completed
        
        tableView.reloadRowsAtIndexPaths([indexPath], withRowAnimation: .None)
    }
    
    @IBAction func unwindForSegue(unwindSegue: UIStoryboardSegue) {
        let source = unwindSegue.sourceViewController as! AddToDoItemViewController
        
        if let item = source.toDoItem {
            self.toDoItems.append(item)
            self.tableView .reloadData()
        }
    }
}
