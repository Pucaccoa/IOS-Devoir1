//
//  CarController.swift
//  IOS-Devoir1
//
//  Created by alexpucacco on 2017-10-11.
//  Copyright © 2017 alexpucacco. All rights reserved.
//

import Foundation
import CoreData

class CarController{
    
    // MARK: - Core Data stack
    
    lazy var persistentContainer: NSPersistentContainer = {
        /*
         The persistent container for the application. This implementation
         creates and returns a container, having loaded the store for the
         application to it. This property is optional since there are legitimate
         error conditions that could cause the creation of the store to fail.
         */
        let container = NSPersistentContainer(name: "IOS_Devoir1")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                
                /*
                 Typical reasons for an error here include:
                 * The parent directory does not exist, cannot be created, or disallows writing.
                 * The persistent store is not accessible, due to permissions or data protection when the device is locked.
                 * The device is out of space.
                 * The store could not be migrated to the current model version.
                 Check the error message to determine what the actual problem was.
                 */
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()
    
    // MARK: - Core Data Saving support
    
    func saveContext () {
        let context = persistentContainer.viewContext
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }
    
    func getContext() -> NSManagedObjectContext{
        return persistentContainer.viewContext
    }
    
    
    
    
    //CRUD OPERATIONS
    //CRUD OPERATIONS
    //CRUD OPERATIONS
    
    //Read
    func getCars() -> [Car]
    {
        let context = self.getContext()
        
        //request
        let request : NSFetchRequest<Car> = Car.fetchRequest()
        
        //filtre
        
        /*let sortDes = NSSortDescriptor(key:"marque",ascending:true)
        
        request.sortDescriptors*/
        
        do{
            let cars = try context.fetch(request)
            
            if cars.count > 0 {
                return cars as [Car]
            }
        }
        catch{
            print("error")
        }
        return []
    }
    
    
    
    
    
    //Create
    
    func addCar(){
        
    }
    
    
    
}


