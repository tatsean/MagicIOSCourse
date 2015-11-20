//
//  ClassRoom.swift
//  LittleHumanScholars
//
//  Created by Tat Sean Pang on 18/11/2015.
//  Copyright © 2015 Tat Sean Pang. All rights reserved.
//

import Foundation

//ClassRoomName: String
//AgeGroup: Int
//Kids: [Kid]
//Teachers: [Teacher]

class ClassRoom {
    var classRoomName: String
    var ageGroup: Int
    var kids: [Kid]?
    var teachers: [Teacher]?
    
    init(classRoomName: String, ageGroup: Int)
    {
        self.classRoomName = classRoomName
        self.ageGroup = ageGroup
    }
}