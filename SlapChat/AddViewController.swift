//
//  AddViewController.swift
//  SlapChat
//
//  Created by Flatiron School on 7/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit


class AddViewController: UIViewController {
    
    let dataStore = DataStore.sharedDataStore

    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func addTapped(sender: AnyObject) {
        if let textToAdd = textField.text {
            self.dataStore.helpMethodDataGenerater(textToAdd)
        }
        dataStore.saveContext()
        self.dismissViewControllerAnimated(true, completion: nil)
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
