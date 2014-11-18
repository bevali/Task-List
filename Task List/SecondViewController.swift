//
//  SecondViewController.swift
//  Task List
//
//  Created by BEVERLY LEU on 11/14/14.
//  Copyright (c) 2014 BEVERLY'S LAB. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    
    @IBOutlet var txtTask: UITextField!
    @IBOutlet var txtDesc: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Events
    @IBAction func btnAddTask_Click(sender: UIButton){
        taskMgr.addTask(txtTask.text, desc: txtDesc.text);
        self.view.endEditing(true)
        txtTask.text = ""
        txtDesc.text = ""
        self.tabBarController?.selectedIndex = 0;
    }
    
    
    //IOS Touch Functions
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
    //UITextFieldDelegate
    func textFieldShouldReturn(textField: UITextField) -> Bool // called when 'return' key pressed. return NO to ignore.
    {
        textField.resignFirstResponder();
        return true
    }


}

