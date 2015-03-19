//
//  AddTodoViewController.swift
//  todoFly
//
//  Created by Rico on 15/3/17.
//  Copyright (c) 2015年 Rico. All rights reserved.
//

import UIKit

@objc protocol AddTodoViewControllerDelegate {
    optional func addTodoViewController(addTodoViewController: AddTodoViewController, todo:Todo)
    optional func addTodoViewControllerDidCancel(addTodoViewController: AddTodoViewController)
}


class AddTodoViewController: UIViewController {

    weak var addTodoDelegate: AddTodoViewControllerDelegate?
    
    @IBAction func save(sender: AnyObject) {
        let todo = Todo(text: "test")
        addTodoDelegate?.addTodoViewController?(self, todo: todo)
    }
    
    @IBAction func cancel(sender: AnyObject) {
        addTodoDelegate?.addTodoViewControllerDidCancel?(self)
    }

}
