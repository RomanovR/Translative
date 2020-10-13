//
//  NavigationController.swift
//  Translative
//
//  Created by xdrond on 08.09.2020.
//  Copyright © 2020 romanromanov. All rights reserved.
//

import UIKit
import CoreData

class NavigationControllerPassingContainer: UINavigationController {

    var coreDataManager: CoreDataManager!

    override func viewDidLoad() {
        if let mainTableVC = self.topViewController as? MainTableViewController{
            mainTableVC.coreDataManager = self.coreDataManager
        }
    }

}
