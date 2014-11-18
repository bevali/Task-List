//
//  TaskManager.swift
//  Task List
//
//  Created by BEVERLY LEU on 11/14/14.
//  Copyright (c) 2014 BEVERLY'S LAB. All rights reserved.
//

import UIKit

var taskMgr: TaskManager = TaskManager()

struct task{
    var name = "Un-Named"
    var desc = "Un-Describe"
}

class TaskManager: NSObject {
    
    var tasks = [task]()
    
    func addTask(name:String, desc: String){
        tasks.append(task(name: name, desc: desc))
    }
   
}
