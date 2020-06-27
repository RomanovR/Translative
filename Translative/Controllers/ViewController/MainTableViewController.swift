//
//  MainTableViewController.swift
//  Translative
//
//  Created by xdrond on 16.06.2020.
//  Copyright © 2020 Roman Romanov. All rights reserved.
//

import UIKit

class MainTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return fakeDB.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "Spaces of pairs"
        default:
            return "Section in development"
        }
    }

    // Configure the cell...
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // MARK: - Получаем языковые пары пользователя и настраиваем ячейки.
        let cell = tableView.dequeueReusableCell(withIdentifier: "MainCell", for: indexPath)
        let group: LangPairGroup = fakeDB[indexPath.row]
        cell.textLabel?.text = group.pair.sourceLang.nationalFlag! + group.pair.sourceLang.name + " ⇄ " + group.pair.destLang.name + group.pair.destLang.nationalFlag!

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
        if segue.identifier == "goToCards" {
            // Здесь объектом sender является ячейка, на которую нажимает юзер
            // Получаем indexPath выбранной ячейки с помощью метода indexPathForCell:
            let indexPath = self.tableView.indexPath(for: (sender as! UITableViewCell))
            
            // Получаем языковую пару под тем же индексом, что и индекс нажатой ячейки.
            //let group = fakeDB[indexPath!.row]
            
            // Получаем контроллер, на который юзер попадёт с этим segue
            let cardsVC: CardsTableViewController = segue.destination as! CardsTableViewController
            
            // Задаём атрибут Group в cardsVC
            cardsVC.indexOfLangGroup = indexPath?.row
        }
    }
    

}
