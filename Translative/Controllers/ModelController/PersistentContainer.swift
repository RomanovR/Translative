//
//  PersistentContainer.swift
//  Translative
//
//  Created by xdrond on 04.09.2020.
//  Copyright © 2020 romanromanov. All rights reserved.
//

import Foundation
import CoreData

/// Подкласс для размещения кода, связанного с Core Data, например, функций, возвращающих на диск подмножества данных и вызывающие сохранение данных.
class PersistentContainer: NSPersistentContainer {

    func saveContext(backgroundContext: NSManagedObjectContext? = nil) {
        let context = backgroundContext ?? viewContext
        guard context.hasChanges else { return }
        do {
            try context.save()
        } catch let error as NSError {
            print("Error: \(error), \(error.userInfo)")
        }
    }
}
