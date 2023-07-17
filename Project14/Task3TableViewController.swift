//
//  Task3TableViewController.swift
//  Project14
//
//  Created by Даниил Циркунов on 26.02.2023.
//

import UIKit

class Task3TableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return modelsNews.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Task3Cell", for: indexPath)

        cell.textLabel?.text = modelsNews[indexPath.row].name
        cell.textLabel?.numberOfLines = 0
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "show" {
            guard let indexPath = tableView.indexPathForSelectedRow else {return}
            let newsVC = segue.destination as! Task3ViewController
            newsVC.descriptionText = modelsNews[indexPath.row].description
            newsVC.locationText = modelsNews[indexPath.row].location
        }
    }
}
