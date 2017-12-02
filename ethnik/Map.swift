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
        
        //Simon - Cleaned code up a little bit and let multiple pins show up
        
        pinType.observe(.childAdded) {
            (data: DataSnapshot) in
            
            
            let titlesnap = data.childSnapshot(forPath: "Restaurant Name").value as? String
            let latsnap = data.childSnapshot(forPath: "Latitude").value as? Double
            let longsnap = data.childSnapshot(forPath: "Longitude").value as? Double
            
            
            
            let newAnnotation = MKPointAnnotation()
            newAnnotation.title = titlesnap
            newAnnotation.coordinate = CLLocationCoordinate2D(latitude: latsnap!, longitude: longsnap!)
            
            self.map.addAnnotation(newAnnotation)
            self.map.showAnnotations(self.map.annotations, animated: true)
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
