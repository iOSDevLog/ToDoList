//
//  ViewController.swift
//  ToDoList
//
//  Created by iosdevlog on 15/12/1.
//  Copyright © 2015年 iosdevlog. All rights reserved.
//

import UIKit

class AddToDoItemViewController: UIViewController {

    var toDoItem: ToDoItem!
    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var doneButton: UIBarButtonItem!
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sender = sender as! UIBarButtonItem
        
        if sender.isEqual(self.doneButton) {
            if ((self.textField.text?.lengthOfBytesUsingEncoding(NSUTF8StringEncoding)) != nil) {
                self.toDoItem = ToDoItem()
                self.toDoItem.itemName = self.textField.text!
                self.toDoItem.completed = false
            }
        }
    }
}

