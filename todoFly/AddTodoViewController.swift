//
//  AddTodoViewController.swift
//  todoFly
//
//  Created by Rico on 15/3/17.
//  Copyright (c) 2015年 Rico. All rights reserved.
//

import UIKit

@objc protocol AddTodoViewControllerDelegate {
    optional func addTodoViewControllerDidCancel(addTodoViewController: AddTodoViewController)
}


class AddTodoViewController: UIViewController {

    @IBAction func cancel(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }

}
