//
//  RarityOfItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func rarityOfItems(inventory: [UDItem]) -> [UDItemRarity:Int] {
        var common = 0
        var uncommon = 0
        var rare = 0
        var legendary = 0
        var answer = [UDItemRarity:Int]()
        
        
        for item in inventory {
            //print(item.rarity.rawValue)
            if item.rarity.rawValue == 0 {
                common += 1
            }
            else if item.rarity.rawValue == 1 {
                uncommon += 1
            }
            else if item.rarity.rawValue == 2 {
                rare += 1
            }
            else {
                legendary += 1
            }
        }
        answer = [.Common: common, .Uncommon: uncommon, .Rare: rare, .Legendary: legendary]
        
        return answer
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 4"