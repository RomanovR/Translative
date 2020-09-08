//
//  NavigationController.swift
//  Translative
//
//  Created by xdrond on 08.09.2020.
//  Copyright © 2020 romanromanov. All rights reserved.
//

import UIKit
import CoreData

class NavigationController: UINavigationController {

    var container: NSPersistentContainer!

    override func viewDidLoad() {
        if let mainTableVC = self.topViewController as? MainTableViewController{
            mainTableVC.container = self.container
        }
    }

}
