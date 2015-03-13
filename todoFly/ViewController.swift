//
//  ViewController.swift
//  todoFly
//
//  Created by Rico on 15/3/13.
//  Copyright (c) 2015年 Rico. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var todoView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var todo1 = Todo(text: "Test1")
        var todo2 = Todo(text: "Todo2")
        
        todo2.status = todoStatus.done
        
        var todoList: Array<Todo> = []
        
        todoList.append(todo1)
        todoList.append(todo2)
        
        let width = self.todoView.frame.size.width
        
        var count = 1
        for todo in todoList {
            let label = UILabel(frame: CGRectMake(20, CGFloat(count * 40), width, 20))
            label.text = "\(todo.todoText)(\(todo.status.getStatus()))"
            //println(label.text)
            self.todoView.addSubview(label)
            count++
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

