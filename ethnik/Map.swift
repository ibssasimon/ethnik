//
//  Map.swift
//  ethnik
//
//  Created by James Keith Vega on 10/16/17.
//  Copyright © 2017 The United Nations. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation
import Firebase
import FirebaseDatabase
import FirebaseDatabaseUI

class Map: UIViewController {

    
    let ref = Database.database().reference()
    var foodTypeBP = String()
    

    
    @IBAction func mapBackButton(_ sender: Any) {
        performSegue(withIdentifier: "MapBack", sender: self)
    }

    
    @IBOutlet weak var map: MKMapView!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "tableEmbed" {
            let dest = segue.destination as? TableViewController
            dest?.foodType = foodTypeBP
        }
    }
  
    override func viewDidLoad() {
//        let type = ref.child("Food Type")
//        let query = type.queryEqual(toValue: foodTypeBP)
//        fbDataSource = tableView.bind(to: query) {
//        (tableView: UITableView, IndexPath: IndexPath, data: DataSnapshot) ->
//            UITableViewCell in
//            let cell = tableView.dequeueReusableCell(withIdentifier:"cell")
//            cell?.textLabel?.text = restaurantName[indexPath.row]
//            cell.detailTextLabel?.text = fakeDistance[indexPath.row]
        
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
//        restaurantTableView.delegate = self
//        restaurantTableView.dataSource = self
        
    }
        
        
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
