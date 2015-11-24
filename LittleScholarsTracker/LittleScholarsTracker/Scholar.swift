//
//  Kid.swift
//  LittleScholarsTracker
//
//  Created by Tat Sean Pang on 21/11/2015.
//  Copyright © 2015 Tat Sean Pang. All rights reserved.
//

import Foundation
import UIKit

class Scholar {
    var fullName: String
    var age: Int
    var photo: UIImage?
    var parentName: String
    var parentEmail: String?
    var parentMobile: String
    var classRoom: Classroom?
    // var activities: [KidActivity]?
    
    init (fullName: String, age: Int, parentName: String, parentEmail: String, parentMobile: String) {
        self.fullName = fullName
        self.age = age
        self.parentName = parentName
        self.parentEmail = parentEmail
        self.parentMobile = parentMobile
    }
}


