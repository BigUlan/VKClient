//
//  GlobalGroupsViewController.swift
//  VKClient
//
//  Created by Ulan Beishenkulov on 19/2/23.
//

import UIKit

class GlobalGroupsViewController: UITableViewController {
    
    var globalGroups = [
    Groups(name: "Border - Afghanistan", image: UIImage(named: "border")),
    Groups(name: "Consulate - Germany", image: UIImage(named: "consulate")),
    Groups(name: "East - Qatar", image: UIImage(named: "east")),
    Groups(name: "Favella - Brazil", image: UIImage(named: "favella")),
    Groups(name: "HeadQuarter - Great Britain", image: UIImage(named: "head")),
    Groups(name: "Laboratory NightHaven - TOP SECRET", image: UIImage(named: "lab")),
    Groups(name: "Stadium - Current in Spain", image: UIImage(named: "stadium")),
    Groups(name: "Stronghold - Sweden", image: UIImage(named: "stronghold"))
    ]

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
        return globalGroups.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "GlobalGroupsCell", for: indexPath) as? GlobalGroupsTableViewCell else {
            preconditionFailure("ERROR")
        }

        cell.icon.image = globalGroups[indexPath.row].image
        cell.name.text = globalGroups[indexPath.row].name

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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
