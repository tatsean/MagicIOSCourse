//
//  ActivityTypes.swift
//  LittleScholarsTracker
//
//  Created by Tat Sean Pang on 21/11/2015.
//  Copyright © 2015 Tat Sean Pang. All rights reserved.
//

import Foundation
import UIKit

enum KidActivityTypes {
    case None
    case Eat
    case Nap
    case Bath
    case Medicine
    case Potty
    case Incident
}

class KidActivity {
    var activityTypes: KidActivityTypes
    var notes: String
    var activityDateTime: NSDate
    var photo: UIImage?
    var studentName: String
    
    init (activityTypes: KidActivityTypes, notes: String, activityDateTime: NSDate, studentName: String)
    {
        self.activityTypes = .None
        self.notes = notes
        self.activityDateTime = activityDateTime
        self.studentName = studentName
    }
}
