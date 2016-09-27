//
//  CreateTaskViewController.swift
//  DoIt
//
//  Created by Adam Gendle on 9/25/16.
//  Copyright © 2016 Adam Gendle. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {
    @IBOutlet weak var taskNameTextField: UITextField!
    @IBOutlet weak var importantSwitch: UISwitch!
    
    var previousVC = TasksViewController()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func addTapped(_ sender: AnyObject) {
        
        let task = Task()
        
        if taskNameTextField.text != nil {
        task.name = taskNameTextField.text!
        task.important = importantSwitch.isOn
        }
        
        previousVC.tasks.append(task)
        previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)
    }
    
      
    
}
