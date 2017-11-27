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
        
        let child = ref.childByAutoId()
        
        let dataType = [
            "Restaurant Name": "restaurant",
            "Food Type": "food",
            "Location": "Stub",
            "Rating": "5"
        
        ] as [String: Any]
        
        child.setValue(dataType)
      
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func medBP(_ sender: Any) {
        performSegue(withIdentifier: "main2map", sender: self)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

