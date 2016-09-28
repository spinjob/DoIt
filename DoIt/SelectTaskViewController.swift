//
//  SelectTaskViewController.swift
//  DoIt
//
//  Created by Spencer Johnson on 9/27/16.
//  Copyright © 2016 Spencer Johnson. All rights reserved.
//

import UIKit

class SelectTaskViewController: UIViewController {

    
    @IBOutlet weak var taskLabel: UILabel!
   
    var task : Task? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if task!.important {taskLabel!.text = "\(task!.name!)❗️"
            
        } else {taskLabel!.text = task!.name!
        }
    }

   
    @IBAction func completeTapped(_ sender: AnyObject) {

        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        print("\(task!.name) removed")
        
        context.delete(task!)
        
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
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
