//
//  ViewController.swift
//  ethnik
//
//  Created by James Keith Vega on 10/15/17.
//  Copyright © 2017 The United Nations. All rights reserved.
//  James Keith Vega, Simon Ibssa, Omar Shorab, Anira Malik
//

import UIKit
import Firebase
extension Date {
    func dateAt(hours: Int, minutes: Int) -> Date {
        let calendar = NSCalendar(calendarIdentifier: NSCalendar.Identifier.gregorian)!
        var date_components = calendar.components (
            [NSCalendar.Unit.year, NSCalendar.Unit.month,NSCalendar.Unit.day], from: self)
        date_components.hour = hours
        date_components.minute = minutes
        date_components.second = 0
        let newDate = calendar.date(from: date_components)!
        return newDate
    }
}
let now = Date()
let five_today = now.dateAt(hours: 5, minutes: 0)
let twelve_today = now.dateAt(hours: 12, minutes: 0)
let six_today = now.dateAt(hours: 18, minutes: 0)
let midnight_today = now.dateAt(hours: 0, minutes: 0)
let nearmidnight_today = now.dateAt(hours:23, minutes: 59)


// test comment for Github

class ViewController: UIViewController {
    

// action connections for buttons
    @IBOutlet weak var time: UILabel!
    
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
            } else if segue.identifier == "medBP" {
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
        if now >= midnight_today &&
            now <= twelve_today
        {
            time.text = "morning!"
        } else if now >= twelve_today &&
            now <= six_today {
            time.text = "afternoon!"
        } else if now >= six_today && now <= nearmidnight_today {
            time.text = "evening!"
        }
        
        super.viewDidLoad()
        //I've created the code to add to database, just need to extract it. See below.
      
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    func loadMediterranean() {
        let ref = Database.database().reference()
        let mediterranean = ref.child("Mediterranean")
        
        //Initialization of Restaurants
        let jaffa = mediterranean.child("Jaffa Cafe")
        let fattoush = mediterranean.child("Fattoush")
        let pitaPit = mediterranean.child("Pita Pit")
        let petra = mediterranean.child("Petra")
        let oasis = mediterranean.child("Oasis Restaurant & Catering")
        
        
        //initialization of values for restaurants
        let jaffaData = [
            "Restaurant Name": "Jaffa Cafe",
            "Food Type": "Mediterranean",
            "Longitude": -120.65708899999998,
            "Latitude": 35.284619,
            "Rating": 4.6
            
            ] as [String: Any]
        jaffa.setValue(jaffaData)
        
        
        let fattoushData = [
            "Restaurant Name": "Fattoush",
            "Food Type": "Mediterranean",
            "Longitude": -120.6680136,
            "Latitude": 35.2934011,
            "Rating": 4.4
            
            ] as [String: Any]
        fattoush.setValue(fattoushData)
        
        
        let pitaData = [
            "Restaurant Name": "Pita Pit",
            "Food Type": "Mediterranean",
            "Longitude": -120.67058800000001,
            "Latitude": 35.2944202,
            "Rating": 3.8
            
            ] as [String: Any]
        pitaPit.setValue(pitaData)
        
        
        let petraData = [
            "Restaurant Name": "Petra",
            "Food Type": "Mediterranean",
            "Longitude": -120.65794870000002,
            "Latitude": 35.2830522,
            "Rating": 4.6
            
            ] as [String: Any]
        petra.setValue(petraData)
        
        let oasisData = [
            "Restaurant Name": "Oasis Restaurant & Catering",
            "Food Type": "Mediterranean",
            "Longitude": -120.664785200,
            "Latitude": 35.278431100,
            "Rating": 4.3
            
            ] as [String: Any]
        oasis.setValue(oasisData)
        
    }
    
    func loadIndian() {
        let ref = Database.database().reference()
        let indian = ref.child("Indian")
        let tajPalace = indian.child("Taj Palace")
        let shalimar = indian.child("Shalimar")
        
        
        //initialization of values for restaurants
        let tajData = [
            "Restaurant Name": "Taj Palace",
            "Food Type": "Indian",
            "Longitude": -120.671529500,
            "Latitude": 35.293758700,
            "Rating": 4.0
            
            ] as [String: Any]
        tajPalace.setValue(tajData)
        
        
        let shalimarData = [
            "Restaurant Name": "Shalimar",
            "Food Type": "Indian",
            "Longitude": -120.657757100,
            "Latitude": 35.270793100,
            "Rating": 4.4
            
            ] as [String: Any]
        shalimar.setValue(shalimarData)
    }
    
    func loadChinese() {
        let ref = Database.database().reference()
        let chinese = ref.child("Chinese")
        
        let goldenGong = chinese.child("Golden Gong Chinese Restaurant")
        let meeHengLow = chinese.child("Mee Heng Low Noodle House")
        
        
        let goldenGongData = [
            "Restaurant Name": "Golden Gong Chinese Restaurant",
            "Food Type": "Chinese",
            "Longitude": -120.678877400,
            "Latitude": 35.262946700,
            "Rating": 3.4
        
        ] as [String: Any]
        goldenGong.setValue(goldenGongData)
        
        
        let meeHengLowData = [
            "Restaurant Name": "Mee Heng Low Noodle House",
            "Food Type": "Chinese",
            "Longitude":-120.663913200,
            "Latitude": 35.281459100,
            "Rating": 4.3
            
            ] as [String: Any]
        meeHengLow.setValue(meeHengLowData)
    }
    
    func loadMexican() {
        let ref = Database.database().reference()
        let mexican = ref.child("Mexican")
        
        
        let tacoDeMexico = mexican.child("Taco De Mexico")
        let taqueriaSantaCruz = mexican.child("Taqueria Santa Cruz Express")
        
        
        let tacoDeMexicoData = [
            "Restaurant Name": "Taco De Mexico",
            "Food Type": "Mexican",
            "Longitude": -120.664416100,
            "Latitude": 35.288103600,
            "Rating": 4.2
            
            ] as [String: Any]
        tacoDeMexico.setValue(tacoDeMexicoData)
        
        let taqueriaSantaCruzData = [
            "Restaurant Name": "Taqueria Santa Cruz Express",
            "Food Type": "Mexican",
            "Longitude": -120.657085900,
            "Latitude": 35.284642100,
            "Rating": 4.6
            
            ] as [String: Any]
        taqueriaSantaCruz.setValue(taqueriaSantaCruzData)
        
    }
    
    func loadThai() {
        let ref = Database.database().reference()
        let thai = ref.child("Thai")
        
        
        let royalThai = thai.child("Royal Thai")
        let thaiPalace = thai.child("Thai Palace")
        
        
        let royalThaiData = [
            "Restaurant Name": "Royal Thai",
            "Food Type": "Thai",
            "Longitude": -120.671876800,
            "Latitude": 35.292917600,
            "Rating": 4.1
            
            ] as [String: Any]
        royalThai.setValue(royalThaiData)
        
        let thaiPalaceData = [
            "Restaurant Name": "Thai Palace",
            "Food Type": "Thai",
            "Longitude": -120.661843300,
            "Latitude": 35.281202300,
            "Rating": 4.4
            
            ] as [String: Any]
        thaiPalace.setValue(thaiPalaceData)
    }
    
    func loadJapanese() {
        let ref = Database.database().reference()
        let japanese = ref.child("Japanese")
        
        
        let goshi = japanese.child("Goshi Japanese Restaurant")
        let hahaSushi = japanese.child("HaHa Sushi & Grill")
        
        
        let goshiData = [
            "Restaurant Name": "Goshi Japanese Restaurant",
            "Food Type": "Japanese",
            "Longitude": -120.666793100,
            "Latitude": 35.278079200,
            "Rating": 4.7
            
            ] as [String: Any]
        goshi.setValue(goshiData)
        
        let hahaSushiData = [
            "Restaurant Name": "HaHa Sushi & Grill",
            "Food Type": "Japanese",
            "Longitude": -120.664568800,
            "Latitude": 35.287073700,
            "Rating": 4.4
            
            ] as [String: Any]
        hahaSushi.setValue(hahaSushiData)
    }
    
    func loadVietnamese() {
        let ref = Database.database().reference()
        let vietnamese = ref.child("Vietnamese")
        
        let lotus = vietnamese.child("Lotus")
        
        
        let lotusData = [
            "Restaurant Name": "Lotus",
            "Food Type": "Vietnamese",
            "Longitude": -120.664278000,
            "Latitude": 35.278360800,
            "Rating": 4.2
        ] as [String: Any]
        lotus.setValue(lotusData)
    }
    
    func loadItalian() {
        let ref = Database.database().reference()
        let italian = ref.child("Italian")
        
        let piemonte = italian.child("Piemonte's Italian Delicatessen")
        let buona = italian.child("Buona Tavola")
        
        let piemonteData = [
            "Restaurant Name": "Piemonte's Italian Delicatessen",
            "Food Type": "Italian",
            "Longitude": -120.658286000,
            "Latitude": 35.283862700,
            "Rating": 4.7
            ] as [String: Any]
        piemonte.setValue(piemonteData)
        
        let buonaData = [
            "Restaurant Name": "Buona Tavola",
            "Food Type": "Italian",
            "Longitude": -120.660490000,
            "Latitude": 35.282073600,
            "Rating": 4.4
            ] as [String: Any]
        buona.setValue(buonaData)
    }
    
    func loadOther() {
        let ref = Database.database().reference()
        let other = ref.child("Other")
        
        let jades = other.child("Jades Filipino Food")
        
        let jadesData = [
            "Restaurant Name": "Jades Filipino Food",
            "Food Type": "Other",
            "Longitude": -120.437265700,
            "Latitude": 34.923223400,
            "Rating": 4.6
            ] as [String: Any]
        jades.setValue(jadesData)
    }
    
    
    
   
  
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

