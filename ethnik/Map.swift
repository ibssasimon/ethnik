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

class Map: UIViewController, UITableViewDataSource, UITableViewDelegate {
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        <#code#>
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        <#code#>
//    }
    
    let ref = Database.database().reference()
    var fbDataSource: FUITableViewDataSource?
    
    
    
    @IBOutlet weak var restaurantTableView: UITableView!
    
    @IBAction func mapBackButton(_ sender: Any) {
        performSegue(withIdentifier: "MapBack", sender: self)
    }


    
    let restaurantName = ["Jaffa Cafe","Petra","Fattoush","Pita Pit"]

    let fakeDistance = ["2.0 mi", "1.9 mi", "1.2 mi", "1.3 mi"]

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return(restaurantName.count)
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = restaurantTableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = restaurantName[indexPath.row]
        cell?.detailTextLabel?.text = "\(fakeDistance[indexPath.row])"

        return(cell)!
    }
    
    @IBOutlet weak var map: MKMapView!
    
   
  
    override func viewDidLoad() {
//        let type = ref.child("Food Type")
//        let query = type.queryEqual(toValue: foodTypeBP)
//        fbDataSource = tableView.bind(to: query) {
//        (tableView: UITableView, IndexPath: IndexPath, data: DataSnapshot) ->
//            UITableViewCell in
//            let cell = tableView.dequeueReusableCell(withIdentifier:"cell")
//            cell?.textLabel?.text = restaurantName[indexPath.row]
//            cell.detailTextLabel?.text = fakeDistance[indexPath.row]
//        }
        
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
//        restaurantTableView.delegate = self
//        restaurantTableView.dataSource = self
        
        
        let jaffa = MKPointAnnotation()
        jaffa.title = "Jaffa Cafe"
        jaffa.coordinate = CLLocationCoordinate2D(latitude: 35.284619, longitude: -120.65708899999998)
        
        let petra = MKPointAnnotation()
        petra.title = "Petra Mediterranean Pizza & Grill"
        petra.coordinate = CLLocationCoordinate2D(latitude: 35.2830522, longitude: -120.65794870000002)
        
        let fattoush = MKPointAnnotation ()
        fattoush.title = "Fattoush"
        fattoush.coordinate = CLLocationCoordinate2D(latitude: 35.2934011, longitude: -120.6680136)
        
        let pitaPit = MKPointAnnotation()
        pitaPit.title="Pita Pit"
        pitaPit.coordinate = CLLocationCoordinate2D(latitude: 35.2944202, longitude: -120.67058800000001)
    
    map.addAnnotation(jaffa)
    map.addAnnotation(petra)
    map.addAnnotation(fattoush)
    map.addAnnotation(pitaPit)
    
    map.showAnnotations([jaffa,petra,fattoush,pitaPit], animated: true)
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
