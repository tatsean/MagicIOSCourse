//
//  Classroom.swift
//  LittleScholarsTracker
//
//  Created by Tat Sean Pang on 21/11/2015.
//  Copyright © 2015 Tat Sean Pang. All rights reserved.
//

import Foundation

class Classroom {
    var classroomName: String
    var ageGroup: Int
    
    var kids: [Kid]?
    var teachers: [Teacher]?
    
    init (classroomName: String, ageGroup: Int)
    {
        self.classroomName = classroomName
        self.ageGroup = ageGroup
    }
}
