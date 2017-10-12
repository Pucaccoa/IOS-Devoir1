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
        self.tableView.delegate = self
        self.tableView.dataSource = self
        print("Hello")
       /* let carController = CarController()
        carController.addCar(marque: "Ford", modele: "Fiesta", odometre: 57000, nombrePorte: 5, couleurInterieur: "Noir", couleurExterieur:"noir", transmission: "Automatique", cylindre: "1.6l")*/
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
        let carController = CarController()
        let cars  = carController.getCars()
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "carr", for: indexPath)
        
        
        cell.textLabel?.text = cars[indexPath.row].modele
        cell.detailTextLabel?.text = cars[indexPath.row].marque
        return cell
    }
    
    
    //Prepare
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let carController = CarController()
        let cars = carController.getCars()
        let idSegue = segue.identifier
        if (idSegue == "DetailSegue")
        {
            let cellule = sender as? UITableViewCell
            let index = tableView.indexPath(for: cellule!)?.row
            let destination = segue.destination as?  DetailViewController
            let eventTapote = cars[index!]
            //destination?.car = eventTapote
            
        }
    }
    
    

    
    
}
