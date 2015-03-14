//
//  ViewController.swift
//  todoFly
//
//  Created by Rico on 15/3/13.
//  Copyright (c) 2015年 Rico. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet weak var todoTableView: UITableView!
    
    var todoList: Array<Todo> = []
    
    func tableView(tableView: UITableView, numberOfRowsInSection: Int) -> Int {
        return self.todoList.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell: UITableViewCell = self.todoTableView.dequeueReusableCellWithIdentifier("cell") as UITableViewCell
        cell.textLabel?.text = self.todoList[indexPath.row].todoText
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        println("#\(indexPath.row + 1) cell selected")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var todo1 = Todo(text: "Test1")
        var todo2 = Todo(text: "Todo2")
        
        todo2.status = todoStatus.done
        
        self.todoList.append(todo1)
        self.todoList.append(todo2)
        
        self.todoTableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

