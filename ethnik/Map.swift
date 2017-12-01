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
    let annotation = MKPointAnnotation()

    
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
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let pinType = ref.child(foodTypeBP)
        pinType.observe(.value) {
            (data: DataSnapshot) in
       print(data.value!)
        }
        
        pinType.observe(.childAdded) {
            (data: DataSnapshot) in
            let titlesnap = data.childSnapshot(forPath: "Restaurant Name")
            let latsnap = data.childSnapshot(forPath: "Latitude")
            let longsnap = data.childSnapshot(forPath: "Longitude")
            
            print(titlesnap.value!)
            print(latsnap.value!)
            print(longsnap.value!)
            
            self.annotation.title = titlesnap.value as? String
            self.annotation.coordinate = CLLocationCoordinate2D(latitude: (latsnap.value as? Double)!, longitude: (longsnap.value as? Double)!)
            self.map.showAnnotations([self.annotation], animated: true)
    }
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
