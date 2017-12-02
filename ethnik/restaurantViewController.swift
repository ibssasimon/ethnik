//
//  restaurantViewController.swift
//  ethnik
//
//  Created by James Keith Vega on 10/16/17.
//  Copyright © 2017 The United Nations. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabaseUI
import FirebaseDatabase



class restaurantViewController: UIViewController {
    var restaurantChosen = String()
    var typeChosen = String()
    
    @IBOutlet weak var restName: UITextView!
    @IBOutlet weak var restCat: UILabel!
    @IBOutlet weak var restHour: UITextView!
    @IBOutlet weak var restWeb: UITextView!
    @IBOutlet weak var restAddy: UITextView!
    @IBOutlet weak var restImage: UIImageView!
    @IBOutlet weak var restRate: UILabel!
    @IBOutlet weak var restPhone: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let ref = Database.database().reference()
        let type = ref.child(typeChosen)
        let resto = type.child(restaurantChosen)
        
        resto.observe(.value){
            (data: DataSnapshot) in
            let titlesnap = data.childSnapshot(forPath: "Restaurant Name")
            let catsnap = data.childSnapshot(forPath: "Food Type")
            let addsnap = data.childSnapshot(forPath: "Address")
            let hoursnap = data.childSnapshot(forPath: "Hours")
            let imgsnap = data.childSnapshot(forPath: "Picture")
            let websnap = data.childSnapshot(forPath: "Web")
            let phonesnap = data.childSnapshot(forPath:"Phone")
            let ratesnap = data.childSnapshot(forPath: "Rating")
           
            self.restName.text = titlesnap.value as? String
            self.restCat.text = catsnap.value as? String
            self.restRate.text = "\(ratesnap.value!)"
            self.restAddy.text = addsnap.value as? String
            self.restWeb.text = websnap.value as? String
            self.restHour.text = hoursnap.value as? String
            self.restPhone.text = phonesnap.value as? String 
        }
        

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
