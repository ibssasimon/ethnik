//
//  ViewController.swift
//  ethnik
//
//  Created by James Keith Vega on 10/15/17.
//  Copyright © 2017 The United Nations. All rights reserved.
//

import UIKit
import Firebase

// test comment for Github

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let ref = Database.database().reference()
        
        let Mediterranean = ref.child("Mediterranean")
        
        loadMediterranean()
        
        
        
        
      
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func loadMediterranean() {
        let jaffa = Mediterranean.child("Jaffa")
        let fattoush = Mediterranean.child("Fattoush")
        let pitaPit = Mediterranean.child("PitaPit")
        let petra = Mediterranean.child("Petra")
        
        
        //initialization of values for restaurants
        let jaffaData = [
            "Restaurant Name": "Jaffa Cafe",
            "Food Type": "Mediterranean",
            "Longitute": "-120.65708899999998",
            "Latitude": "35.284619",
            "Rating": "5"
            
            ] as [String: Any]
        jaffa.setValue(jaffaData)
        
        
        let fattoushData = [
            "Restaurant Name": "Fattoush",
            "Food Type": "Mediterranean",
            "Longitute": "-120.6680136",
            "Latitude": "35.2934011",
            "Rating": "5"
            
            ] as [String: Any]
        fattoush.setValue(fattoushData)
        
        
        let pitaData = [
            "Restaurant Name": "Pita Pit",
            "Food Type": "Mediterranean",
            "Longitute": "-120.67058800000001",
            "Latitude": "35.2944202",
            "Rating": "5"
            
            ] as [String: Any]
        pitaPit.setValue(pitaData)
        
        
        let petraData = [
            "Restaurant Name": "Petra",
            "Food Type": "Mediterranean",
            "Longitute": "-120.65794870000002",
            "Latitude": "35.2830522",
            "Rating": "5"
            
            ] as [String: Any]
        petra.setValue(petraData)
        
    }

  
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

