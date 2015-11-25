//
//  ActivityManager.swift
//  LittleScholarsTracker
//
//  Created by alice on 11/23/15.
//  Copyright © 2015 Tat Sean Pang. All rights reserved.
//

import Foundation

class ActivityManager {
    
    var activities: [Activity?] = [Activity?]()
    
    func addUpdateActivity(activity: Activity) -> Bool {
        activities.append(activity)
        return true
    }
    
    func deleteActivity(activity: Activity) -> Bool {
        if let index = activities.indexOf({$0?.studentName == activity.studentName && $0?.activityTypes == activity.activityTypes && $0?.activityDateTime == activity.activityDateTime}){
            activities.removeAtIndex(index)
        }
        else{
            return false
        }
        return true
    }
    
    func listActivityType() -> [ActivityTypes] {
        let activityTypes = [ActivityTypes]()
        return activityTypes
    }
    
    //get list of particular student's activities
    func listActivityByStudent(student: String) -> [Activity?] {
        let activitybyStudent = activities
        return activitybyStudent
    }
}