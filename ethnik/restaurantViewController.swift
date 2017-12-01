//
//  restaurantViewController.swift
//  ethnik
//
//  Created by James Keith Vega on 10/16/17.
//  Copyright © 2017 The United Nations. All rights reserved.
//

import UIKit
import Firebase

class restaurantViewController: UIViewController {
    var foodTypeLookup = String()
    @IBOutlet weak var restName: UILabel!
    @IBOutlet weak var restCat: UILabel!
    @IBOutlet weak var restAdd1: UILabel!
    @IBOutlet weak var restAdd2: UILabel!
    @IBOutlet weak var restHours: UILabel!
    @IBOutlet weak var restWeb: UILabel!
    @IBOutlet weak var restImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let ref = Database.database().reference()
        let lookup = ref.child(foodTypeLookup)

        // Do any additional setup after loading the view.
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
