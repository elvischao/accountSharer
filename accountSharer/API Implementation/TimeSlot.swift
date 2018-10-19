//
//  TimeSlots.swift
//  accountSharer
//
//  Created by Will Xu  on 10/17/18.
//  Copyright © 2018 Will Xu . All rights reserved.
//

import Foundation
import Parse

class TimeSlot: PFObject, PFSubclassing {
    @NSManaged var timeStart: Date
    @NSManaged var timeEnd: Date
    @NSManaged var owner: PFUser
    @NSManaged var schedule: Schedule
    
    class func parseClassName() -> String {
        return "TimeSlot"
    }
    
    class func makeNewSchedule(schedule: Schedule, withCompletion completion: PFBooleanResultBlock?) {
        let timeSlot = TimeSlot()
        
        timeSlot.owner = PFUser.current()!
        timeSlot.schedule = schedule
        
        timeSlot.saveInBackground(block: completion)
    }
}
