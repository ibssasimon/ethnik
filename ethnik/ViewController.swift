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
    

// action connections for buttons
   @IBAction func chinese(_ sender: Any) {
    }

    @IBAction func mexican(_ sender: Any) {

    }
    @IBAction func italian(_ sender: Any) {
    }
    @IBAction func japanese(_ sender: Any) {
    }
    @IBAction func mediterranean(_ sender: Any) {
    }
    @IBAction func thai(_ sender: Any) {
    }
    @IBAction func indian(_ sender: Any) {
    }
    @IBAction func viet(_ sender: Any) {
    }
    @IBAction func other(_ sender: Any) {
    }
    
override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "ChiBP" {
                let dest = segue.destination as? Map
                dest?.foodTypeBP = "Chinese"
            } else if segue.identifier == "MedBP" {
        let dest = segue.destination as? Map
                dest?.foodTypeBP = "Mediterranean"
            } else if segue.identifier == "mexBP" {
                let dest = segue.destination as? Map
                dest?.foodTypeBP = "Mexican"
            } else if segue.identifier == "jpnBP" {
                let dest = segue.destination as? Map
                dest?.foodTypeBP = "Japanese"
            } else if segue.identifier == "IndBP" {
                let dest = segue.destination as? Map
                dest?.foodTypeBP = "Indian"
            } else if segue.identifier == "OtherBP" {
                let dest = segue.destination as? Map
                dest?.foodTypeBP = "Other"
            } else if segue.identifier == "ItaBP" {
                let dest = segue.destination as? Map
                dest?.foodTypeBP = "Italian"
            } else if segue.identifier == "VietBP" {
                let dest = segue.destination as? Map
                dest?.foodTypeBP = "Vietnamese"
            } else if segue.identifier == "ThaiBP" {
                let dest = segue.destination as? Map
                dest?.foodTypeBP = "Thai"
    }
    }
   
    override func viewDidLoad() {
        


        super.viewDidLoad()
        
        loadIndian()
        
        
        
        
      
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func loadMediterranean() {
        let ref = Database.database().reference()
        let Mediterranean = ref.child("Mediterranean")
        let jaffa = Mediterranean.child("Jaffa")
        let fattoush = Mediterranean.child("Fatoush")
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
    
    func loadIndian() {
        let ref = Database.database().reference()
        let Indian = ref.child("Indian")
        let tajPalace = Indian.child("Taj Palace")
        let shalimar = Indian.child("Shalimar")
        
        
        //initialization of values for restaurants
        let tajData = [
            "Restaurant Name": "Taj Palace",
            "Food Type": "Indian",
            "Longitute": "stub",
            "Latitude": "stub",
            "Rating": "5"
            
            ] as [String: Any]
        tajPalace.setValue(tajData)
        
        
        let shalimarData = [
            "Restaurant Name": "Shalimar",
            "Food Type": "Indian",
            "Longitute": "Stub",
            "Latitude": "Stub",
            "Rating": "5"
            
            ] as [String: Any]
        shalimar.setValue(shalimarData)
    }
   
  
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

