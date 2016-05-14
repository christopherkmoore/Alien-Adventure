//
//  CheckBadges.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func checkBadges(badges: [Badge], requestTypes: [UDRequestType]) -> Bool {
        
        var match = false
        var requestArray = [UDRequestType]()
        
        for badge in badges {
            requestArray.append(badge.requestType)
        }
//        print(requestArray)
        
        for request in requestTypes {
            if requestArray.contains(request){
                let index = requestArray.indexOf(request)
                requestArray.removeAtIndex(index!)
                match = true
            }
            else {
                match = false
                return match
            }
            
        }
        return true
    }
}
    
