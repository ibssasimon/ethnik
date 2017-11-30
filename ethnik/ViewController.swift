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
        
        let ref = Database.database().reference()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
  

  
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

