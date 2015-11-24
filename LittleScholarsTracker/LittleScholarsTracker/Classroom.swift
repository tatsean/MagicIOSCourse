//
//  Classroom.swift
//  LittleScholarsTracker
//
//  Created by Tat Sean Pang on 21/11/2015.
//  Copyright © 2015 Tat Sean Pang. All rights reserved.
//

import Foundation
import Parse

class Classroom {
    var classroomName: String
    var ageGroup: Int
    
    var scholars: [Scholar]?
    var teachers: [Teacher]?
    
    init? (classroomName: String, ageGroup: Int)
    {
        self.ageGroup = ageGroup
        self.classroomName = classroomName
        
        if classroomName.isEmpty
        {
            return nil
        }
    }
}


//var classroom = Classroom(classroomName: "", ageGroup: 2)

