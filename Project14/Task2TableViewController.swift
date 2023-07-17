//
//  Task2TableViewController.swift
//  Project14
//
//  Created by Даниил Циркунов on 20.02.2023.
//

import UIKit

class Task2TableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return news.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let sectionItem = news[section]
        return sectionItem.cell.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Task2Call", for: indexPath)
        
        let sectionItem = news[indexPath.section]
        cell.textLabel?.text =  sectionItem.cell[indexPath.row].title + "\n\n" + sectionItem.cell[indexPath.row].publishedAt.formatted()
        cell.textLabel?.numberOfLines = 0
        
        return cell
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let sectionItem = news[section]
        let date = sectionItem.nameSection
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd MMMM yyyy"
        return dateFormatter.string(from: date)
    }

}
