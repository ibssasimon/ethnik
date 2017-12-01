//
//  TableViewController.swift
//  ethnik
//
//  Created by James Keith Vega on 11/28/17.
//  Copyright © 2017 The United Nations. All rights reserved.
//

import UIKit
import MapKit
import Firebase
import FirebaseDatabase
import FirebaseDatabaseUI

class TableViewController: UITableViewController {
   
    var fbDataSource : FUITableViewDataSource?
    var foodType = String()
     let ref = Database.database().reference()
    override func viewDidLoad() {
        super.viewDidLoad()
        let typetest = ref.child(foodType)
        let query = typetest.queryOrdered(byChild: "Rating")
        
        fbDataSource = tableView.bind(to: query){
            (tableView: UITableView, indexPath: IndexPath, data: DataSnapshot) -> UITableViewCell in
            let cell = tableView.dequeueReusableCell(withIdentifier: "subtitle", for: indexPath)
            let nameSnap = data.childSnapshot(forPath: "Restaurant Name")
            cell.textLabel?.text = nameSnap.value as? String
            
            let rateDesc = data.childSnapshot(forPath: "Rating")
            let rateValue = rateDesc.value as? NSNumber
            cell.detailTextLabel?.text = "\(rateValue!)"
            
            return cell
        }
        
        
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "rest" {
            let dest = segue.destination as! restaurantViewController
            let cell = sender as! TableViewCell
            let desc = cell.snapshot?.childSnapshot(forPath: "Mediterranean")
            print(desc)
//            dest.restaurantChosen = (restName?.value as? String)!
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source
override func numberOfSections(in tableView: UITableView) -> Int {
    // #warning Incomplete implementation, return the number of sections
    return 0
}

override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    // #warning Incomplete implementation, return the number of rows
    return 0
}

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
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

   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
*/


}
