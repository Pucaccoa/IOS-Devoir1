//
//  Car+CoreDataProperties.swift
//  IOS-Devoir1-1
//
//  Created by alexpucacco on 2017-10-11.
//  Copyright © 2017 alexpucacco. All rights reserved.
//

import Foundation
import CoreData


extension Car {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Car> {
        return NSFetchRequest<Car>(entityName: "Car");
    }

    @NSManaged public var marque: String?
    @NSManaged public var modele: String?
    @NSManaged public var odometre: Int32
    @NSManaged public var nombrePorte: Int16
    @NSManaged public var couleurInterieur: String?
    @NSManaged public var couleurExterieur: String?
    @NSManaged public var transmission: String?
    @NSManaged public var cylindre: String?
    @NSManaged public var directrionAssist: Bool
    @NSManaged public var vitreElectrique: Bool
    @NSManaged public var climatisation: Bool

}
