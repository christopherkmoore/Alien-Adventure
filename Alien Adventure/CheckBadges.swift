//
//  CheckBadges.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func checkBadges(badges: [Badge], requestTypes: [UDRequestType]) -> Bool {
        var requestArray = [UDRequestType]()
        
        for request in requestTypes {
            requestArray.append(request)
        }
        
        for item in requestTypes {
//            print("the items are \(item.rawValue)" )
            for badge in badges {
//                print("the badges are \(badge.texture?.)")
                if requestArray.contains(badge.requestType) {
                    let indexOf = requestArray.indexOf(badge.requestType)
                    requestArray.removeAtIndex(indexOf!)
                    print("badges are equal to total of \(requestArray.count)")
                    print("this test is passing with badge.request type equaling \(badge.requestType)")
                    if requestArray.count == 0 {
                        return true
                    }
                }

            }
        }
        return true
    }
}
    
