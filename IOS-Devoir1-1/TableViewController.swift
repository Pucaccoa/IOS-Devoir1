//
//  TableViewController.swift
//  IOS-Devoir1-1
//
//  Created by alexpucacco on 2017-10-11.
//  Copyright © 2017 alexpucacco. All rights reserved.
//

import Foundation
import CoreData
import UIKit

class TableViewController : UITableViewController
{
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        let nbr = 1
        return nbr
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let carController = CarController()
        return carController.count()
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellDevoir1", for: indexPath)
        
        
        
        return cell
    }
    
    
    

    
    
}
