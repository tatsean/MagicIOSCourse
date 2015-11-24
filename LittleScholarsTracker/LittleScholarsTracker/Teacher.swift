//
//  Teacher.swift
//  LittleScholarsTracker
//
//  Created by Tat Sean Pang on 21/11/2015.
//  Copyright © 2015 Tat Sean Pang. All rights reserved.
//

import Foundation
import UIKit

class Teacher {
    var fullName: String
    var mobileNumber: String
    var email: String?
    var classRooms: [Classroom]?
    var photo: UIImage?
    
    init? (fullName: String, mobileNumber: String)
    {
        self.fullName = fullName
        self.mobileNumber = mobileNumber
        
        if (fullName.isEmpty || mobileNumber.isEmpty)
        {
            return nil
        }
    }
}