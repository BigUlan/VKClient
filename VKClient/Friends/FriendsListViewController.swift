//
//  FriendsListViewController.swift
//  VKClient
//
//  Created by Ulan Beishenkulov on 19/2/23.
//

import UIKit

class FriendsListViewController: UITableViewController {
    
    let friends = [
        Friends(name: "Ash - USA", image: UIImage(named: "ash")),
        Friends(name: "Dokkaebi - South Korea", image: UIImage(named: "dokkaebi")),
        Friends(name: "Hibana - Japan", image: UIImage(named: "hibana")),
        Friends(name: "Maestro - Italy", image: UIImage(named: "maestro")),
        Friends(name: "Maverick - USA", image: UIImage(named: "maverick")),
        Friends(name: "Mozzie - Australia", image: UIImage(named: "mozzie")),
        Friends(name: "Mute - Great Britain", image: UIImage(named: "mute")),
        Friends(name: "Rook - France", image: UIImage(named: "rook")),
        Friends(name: "Sledge - Great Britain", image: UIImage(named: "sledge")),
        Friends(name: "Smoke - Great Britain", image: UIImage(named: "smoke")),
        Friends(name: "Thatcher - USA", image: UIImage(named: "thatcher")),
        Friends(name: "Vigil - South Korea", image: UIImage(named: "vigil"))
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
        return friends.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "FriendCell", for: indexPath) as? FriendTableViewCell else {
            preconditionFailure("ERROR")
        }
        
        cell.avatar.image = friends[indexPath.row].image
        cell.friendName.text = friends[indexPath.row].name
        
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
