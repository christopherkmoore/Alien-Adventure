//
//  ShuffleStrings.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    //
    //  ShuffleStrings.swift
    //  Alien Adventure
    //
    //  Created by Jarrod Parkes on 9/30/15.
    //  Copyright © 2015 Udacity. All rights reserved.
    //
    
    
    func shuffleStrings(s1 s1: String, s2: String, shuffle: String) -> Bool {
        
        
        var shuffleValid = false
        
        if s1.characters.count == 0 && s2.characters.count == 0 && shuffle.characters.count == 0 {
            return true
        }
        
        if (s1 + s2).characters.count != shuffle.characters.count {
            return false
        }
            
        else {
            shuffleValid = true
        }
        
        let s1Index = s1.startIndex   // start indexing strings
        let s2Index = s2.startIndex
        let shuffleIndex = shuffle.startIndex
        let shuffleIndexIterable = shuffle.characters.indices
        
        
        if shuffleValid == true {      // make sure the shuffle is legit, then evaluate
            for _ in shuffleIndexIterable {
                if s1[s1Index] == shuffle[shuffleIndex] && s2[s2Index] == shuffle[shuffleIndex.successor()] && s1[s1Index.successor()] == shuffle[shuffleIndex.advancedBy(2)]{
                    // used for debugging print("acbd returned true")
                    return true     // acbd i think
                }
                else if s1[s1Index] == shuffle[shuffleIndex] && s1[s1Index.successor()] == shuffle[shuffleIndex.successor()] && s2[s2Index] == shuffle[shuffleIndex.advancedBy(2)] {
                    // used for debugging print ("abcd returned true")
                    return true        // abcd true
                }
                else if s1[s1Index] == shuffle[shuffleIndex] && s2[s2Index] == shuffle[shuffleIndex.successor()] && s2[s2Index.successor()] == shuffle[shuffleIndex.advancedBy(2)] {
                    // used for debugging print("acdb returned true")
                    return true  // acdb
                }
                else {
                    // used for debugging print("returned false")
                    return false // there should be no other true cases; return false
                }
            }
            return true // i'm not sure why there is a return statement here -- xcode gets mad without one
        }
    }
}