//
//  CreateTaskViewController.swift
//  DoIt
//
//  Created by Spencer Johnson on 9/27/16.
//  Copyright © 2016 Spencer Johnson. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

    @IBOutlet weak var taskNameTextField: UITextField!
    @IBOutlet weak var importantSwitch: UISwitch!
    
    var previousViewController = TasksViewController ()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func addTapped(_ sender: AnyObject) {
        
        //Create a task from the information provided in the outlets
        let task = Task()
        if taskNameTextField.text != nil {
            task.name = taskNameTextField.text!}
        
        task.important = importantSwitch.isOn
        
        //Add a new task to the array in the previous view controller
        previousViewController.tasks.append(task)
        previousViewController.tableView.reloadData()
        navigationController!.popViewController(animated: true)
    }

}
