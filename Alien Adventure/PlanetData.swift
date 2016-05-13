//
//  PlanetData.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//
import Foundation

extension Hero {
    
    func planetData(dataFile: String) -> String {
        
        let planetJSON = NSBundle.mainBundle().URLForResource(dataFile, withExtension: "json")!
        let rawPlanetJSON = NSData(contentsOfURL: planetJSON)!
        
        var planetDataFromJSON: [[String:AnyObject]]!
        
        do {
            planetDataFromJSON = try! NSJSONSerialization.JSONObjectWithData(rawPlanetJSON, options: NSJSONReadingOptions()) as! [[String:AnyObject]]
        }
        
        var greatest = 0
        var score = 0
        var greatestName = ""
        
        for planets in planetDataFromJSON {
            
            let rare = planets["RareItemsDetected"] as? Int
            let legendary = planets["LegendaryItemsDetected"] as? Int
            let common = planets["CommonItemsDetected"] as? Int
            let uncommon = planets["UncommonItemsDetected"] as? Int
            if let name = planets["Name"] as? String {
                score = ((common! * 1) + (uncommon! * 2) + (rare! * 3) + (legendary! * 4))
                //print("\(name) has a score of \(score)")
                if score > greatest {
                    greatest = score
                    greatestName = name
                    //print("\(name) has the greatest score of \(greatest)")

                }
            }
        }
        return greatestName
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 7"