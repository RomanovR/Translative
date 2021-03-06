//
//  CardsTableViewController.swift
//  Translative
//
//  Created by xdrond on 16.06.2020.
//  Copyright © 2020 Roman Romanov. All rights reserved.
//

import UIKit
import CoreData

class CardsTableViewController: UITableViewController {

    /// Постоянное хранилище Core Data.
    var coreDataManager: CoreDataManager!
    
    var indexOfLangGroup: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //print(fakeDB[indexOfLangGroup].cards)
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

//    override func viewDidAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//
//    }
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return fakeDB[indexOfLangGroup].cards.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Configure the cell...
        let cell = tableView.dequeueReusableCell(withIdentifier: "CardCell", for: indexPath)
        if let titleOfCard = fakeDB[indexOfLangGroup].cards[indexPath.row].userText {
            cell.textLabel?.text = titleOfCard
        }
        else{
            cell.textLabel?.alpha = 0.7
            cell.textLabel?.text = "Empty card"
        }
        
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.

        if let translateVC = segue.destination as? TranslateViewController {
            // Здесь объектом sender является ячейка, на которую нажимает пользователь.

            // Передаём ссылку на постоянное хранилище.
            translateVC.coreDataManager = coreDataManager

            // Здесь объектом sender является ячейка, на которую нажимает юзер
            // Получаем indexPath выбранной ячейки с помощью метода indexPathForCell:
            let indexPath = self.tableView.indexPath(for: (sender as! UITableViewCell))
            
            // Передаём двойной индекс нажатой карточки.
            translateVC.indexOfLangGroup = indexOfLangGroup
            translateVC.indexOfCard = indexPath?.row
        }
    }
    

}
