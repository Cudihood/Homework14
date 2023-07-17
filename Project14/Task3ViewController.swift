//
//  Task3ViewController.swift
//  Project14
//
//  Created by Даниил Циркунов on 26.02.2023.
//

import UIKit

class Task3ViewController: UIViewController {

 
    @IBOutlet weak var descriptionLable: UILabel!
    @IBOutlet weak var locationLable: UILabel!
    
    var locationText = ""
    var descriptionText = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        descriptionLable.text = "Description:\n" + descriptionText
        locationLable.text = "Location:\n" + locationText
    }
}
