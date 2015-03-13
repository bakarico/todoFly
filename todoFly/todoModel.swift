//
//  todoModel.swift
//  todoFly
//
//  Created by Rico on 15/3/13.
//  Copyright (c) 2015年 Rico. All rights reserved.
//

import Foundation


enum todoStatus: Int {
    case undo = 1
    case done
    
    func getStatus() -> String {
        switch self {
        case .undo:
            return "undo"
        case .done:
            return "done"
        default:
            return "unknown"
        }
    }

}


class Todo: NSObject {
    var createDate: NSDate
    var todoText: NSString
    var status: todoStatus
    
    init(text: String) {
        self.createDate = NSDate()
        self.todoText = text
        self.status = todoStatus.undo
    }
}
