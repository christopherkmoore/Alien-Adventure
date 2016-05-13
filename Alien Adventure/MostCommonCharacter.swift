//
//  MostCommonCharacter.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func mostCommonCharacter(inventory: [UDItem]) -> Character? {
        
        var lettersDict = [Character: Int]()
        var highestValue: Int = 0
        var returnChar: Character = "a"
        
        if inventory.isEmpty {
            return nil
        }
        
        for items in inventory {
            let name = items.name.lowercaseString
            for character in name.characters {

                if let value = lettersDict[character] {
                    let newCount = value + 1
                    lettersDict[character] = newCount
                    }
                else {
                    lettersDict[character] = 1 // add to dict
                }

                
            }
            
        }
        
        for (letter, number) in lettersDict {
            if number > highestValue {
                highestValue = number
                returnChar = letter
            }
        }
        
                return returnChar
    }
}
