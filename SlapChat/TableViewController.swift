//
//  TableViewController.swift
//  SlapChat
//
//  Created by susan lovaglio on 7/16/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    let dataStore = DataStore.sharedDataStore

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.dataStore.generateData()
        
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
    }
    
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dataStore.messages.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        let currentMessage = self.dataStore.messages[indexPath.row] as! Message
        cell.textLabel?.text = currentMessage.content
        return cell
    }
    
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(true)
        // want to request for data and show it in table view
        self.dataStore.fetchData()
        self.tableView.reloadData()
    }
    
}
