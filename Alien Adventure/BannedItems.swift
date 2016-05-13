//
//  BannedItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import Foundation

extension Hero {
    
    func bannedItems(dataFile: String) -> [Int] {
        
        let dataFileURL = NSBundle.mainBundle().URLForResource(dataFile, withExtension: "plist")
        let itemsArray = NSArray(contentsOfURL: dataFileURL!) as! [[String:AnyObject]]
        
        var itemIDs = [Int]()
        
        for item in itemsArray {
            if let id = item["ItemID"] as? Int {
                //print(id)
                if let name = item["Name"] as? String where name.lowercaseString.containsString("laser") {
                    //print(name)
                    if let historical = item["HistoricalData"] as? [String:AnyObject] {
                        if let carbon = historical["CarbonAge"] as? Int where carbon < 30 {
                            itemIDs.append(id)
                            //print(itemIDs)
                            
                        }
                    }
                }
            }
        }
        print(itemIDs)
        return itemIDs
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 6"