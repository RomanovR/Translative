//
//  CoreDataManager.swift
//  Translative
//
//  Created by xdrond on 08.09.2020.
//  Copyright © 2020 romanromanov. All rights reserved.
//

import Foundation
import CoreData

class CoreDataManager {

    private static let container: NSPersistentContainer! = UIApplication.shared.delegate

    init(persistentContainer: NSPersistentContainer) {
        self.container = persistentContainer
    }

}
