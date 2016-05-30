//
//  PolicingItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func policingItems(inventory: [UDItem], policingFilter: UDItem throws -> Void) -> [UDPolicingError:Int] {
        
        var errorLog: [UDPolicingError:Int] = [UDPolicingError.NameContainsLaser: 0, UDPolicingError.ItemFromCunia: 0, UDPolicingError.ValueLessThan10: 0]
        var nameContainsLazerrr = 0
        var valueLessThanTen = 0
        var itemFromCunia = 0
        
        for item in inventory {
            do {
                try policingFilter(item)
                    UDPolicingError.NameContainsLaser
            } catch UDPolicingError.NameContainsLaser {
                if item.name.lowercaseString.containsString("laser") {
                nameContainsLazerrr += 1
                errorLog[.NameContainsLaser] = nameContainsLazerrr
                }
            } catch UDPolicingError.ItemFromCunia {
                if let planetOrigin = item.historicalData["PlanetOfOrigin"] as? String where planetOrigin.lowercaseString == "cunia" {
                    itemFromCunia += 1
                    errorLog[.ItemFromCunia] = itemFromCunia
                }
                
            } catch UDPolicingError.ValueLessThan10 {
                if item.baseValue < 10 {
                    valueLessThanTen += 1
                    errorLog[.ValueLessThan10] = valueLessThanTen
                }
                
            } catch {
                print("Error not found. You messed up alot")
            }
        }

        print(errorLog)
        return errorLog
    }
    
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 1"