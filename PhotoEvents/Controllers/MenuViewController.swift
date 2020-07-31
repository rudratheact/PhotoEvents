//
//  MenuViewController.swift
//  PhotoEvents
//
//  Created by Rudra Misra on 7/31/20.
//  Copyright © 2020 Rudra Misra. All rights reserved.
//

import UIKit

class MenuViewController: UITableViewController {

    let items = ["Events", "Staffs", "Customers", "Equipments", " ", " ", "Settings"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        tableView.backgroundColor = UIColor(named: K.Colors.toDoBackground)
        tableView.separatorColor = UIColor(named: K.Colors.toDoBackground)
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "reuseIdentifier")
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return items.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = items[indexPath.row]
        cell.textLabel?.textColor = UIColor.white
        cell.backgroundColor = UIColor(named: K.Colors.toDoBackground)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        var newViewController:UIViewController?

        switch indexPath.row{
            case 0: newViewController = storyBoard.instantiateViewController(withIdentifier: "event") as! EventViewController
            newViewController!.title = "Events"
            case 1: newViewController = storyBoard.instantiateViewController(withIdentifier: "staff") as! StaffViewController
            newViewController!.title = "Staffs"
            case 2: newViewController = storyBoard.instantiateViewController(withIdentifier: "customer") as! CustomerViewController
            newViewController!.title = "Customers"
            case 3: newViewController = storyBoard.instantiateViewController(withIdentifier: "equipment") as! EquipmentViewController
            newViewController!.title = "Equipments"
            case 4: newViewController = nil
            case 5: newViewController = nil
            case 6: newViewController = storyBoard.instantiateViewController(withIdentifier: "setting") as! SettingViewController
            newViewController!.title = "Settings"
            default:()
        }
        if let nvc = newViewController{
           self.navigationController?.pushViewController(nvc, animated: true)
        }
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
    /*
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
}
