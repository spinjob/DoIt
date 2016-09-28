//
//  SelectTaskViewController.swift
//  DoIt
//
//  Created by Spencer Johnson on 9/27/16.
//  Copyright © 2016 Spencer Johnson. All rights reserved.
//

import UIKit

class SelectTaskViewController: UIViewController {

    var task = Task()
    var previousViewController = TasksViewController ()
    
    @IBOutlet weak var taskLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if task.important {taskLabel!.text = "\(task.name)❗️"
            
        } else {taskLabel!.text = task.name
        }
    }

   
    @IBAction func completeTapped(_ sender: AnyObject) {
        previousViewController.tasks.remove(at: previousViewController.selectedIndex)
        previousViewController.tableView.reloadData()
        navigationController!.popViewController(animated: true)

    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
