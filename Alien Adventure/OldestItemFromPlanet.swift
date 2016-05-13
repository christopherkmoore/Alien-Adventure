//
//  OldestItemFromPlanet.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/3/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func oldestItemFromPlanet(inventory: [UDItem], planet: String) -> UDItem? {
        
        var dataz = UDItem?()
        var greatest = 0
        
        for item in inventory {
            if let planetName = item.historicalData["PlanetOfOrigin"] as? String where planetName == planet{
               if let planetCarbon = item.historicalData["CarbonAge"] as? Int where planetCarbon >  greatest{
                    greatest = planetCarbon
                    //print(planetCarbon)
                    dataz = item
                    //print(item)
                }
            }
        }
        return dataz
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 2"