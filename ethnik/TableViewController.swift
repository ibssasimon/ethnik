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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let ref = Database.database().reference()
        let query = ref.queryEqual(toValue: foodType, childKey: "Food Type")
        
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
//        ref.observe(.childAdded) {
//            (data: DataSnapshot) in
//            let titlesnap = data.childSnapshot(forPath: "Restaurant Name")
//            let latsnap = data.childSnapshot(forPath: "Latitude")
//            let longsnap = data.childSnapshot(forPath: "Longitude")
//
//            self.annotation.title = titlesnap.value as? String
//            self.annotation.coordinate = CLLocationCoordinate2D(latitude: (latsnap.value as? Double)!, longitude: (longsnap.value as? Double)!)
//
//            print(titlesnap.value!)
//            print(latsnap.value!)
//            print(longsnap.value!)
//            self.map.showAnnotations ([self.annotation], animated: true)
//
//        }
        
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
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

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
