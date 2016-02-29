//
//  MainMenuViewController.swift
//  ChoreWheel
//
//  Created by Justin Morrow on 2/28/16.
//  Copyright © 2016 JPMorrow. All rights reserved.
//

import UIKit

class MainMenuViewController: UITableViewController {
    
    let mainNavigationController = UINavigationController()
    let tableArray = ["thing1", "thing2", "thing3"]

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.whiteColor()
        
        // Configure navigationController
        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .Edit, target: self, action: "editButtonPressed")
        
        // Configure the tableView
        tableView.dataSource = self
        tableView.delegate = self
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "customCell")
        
        NSLayoutConstraint.activateConstraints([
            ])
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableArray.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("customCell", forIndexPath: indexPath)
        cell.textLabel?.text = tableArray[indexPath.item]
        return cell
    }
    
    func editButtonPressed() {
        
    }
}

