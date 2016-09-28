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
    
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func addTapped(_ sender: AnyObject) {
        
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        
        
        if taskNameTextField.text != "" {
            let task = Task(context: context)
            
            task.name = taskNameTextField.text!
            task.important = importantSwitch.isOn
            (UIApplication.shared.delegate as! AppDelegate).saveContext()
            // Pop back
            navigationController!.popViewController(animated: true)
        }
        
    }
    
      
    
}
