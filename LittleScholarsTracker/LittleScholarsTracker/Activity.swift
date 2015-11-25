//
//  ActivityTypes.swift
//  LittleScholarsTracker
//
//  Created by Tat Sean Pang on 21/11/2015.
//  Copyright © 2015 Tat Sean Pang. All rights reserved.
//

import Foundation
import UIKit

enum ActivityTypes {
    case None
    case Eat
    case Nap
    case Bath
    case Medicine
    case Potty
    case Incident
}

class Activity {
    var activityTypes: ActivityTypes
    var notes: String?
    var activityDateTime: NSDate
    var photo: UIImage?
    var studentName: String
    
    init? (activityTypes: ActivityTypes, studentName: String, activityDateTime: NSDate = NSDate())
    {
        self.activityTypes = .None
        self.activityDateTime = activityDateTime
        self.studentName = studentName
        
        if(studentName.isEmpty){
            return nil
        }
    }
}
