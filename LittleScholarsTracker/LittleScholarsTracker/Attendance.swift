//
//  Attendance.swift
//  LittleScholarsTracker
//
//  Created by alice on 11/22/15.
//  Copyright © 2015 Tat Sean Pang. All rights reserved.
//

import Foundation

class Attendance {
    var studentName: String
    var checkInDateTime: NSDate
    var checkOutDateTime: NSDate?
    var checkInBy: String
    var checkOutBy: String?
    
    init?(studentName: String, checkInBy: String, checkInDateTime: NSDate = NSDate()) {
        self.studentName = studentName
        self.checkInDateTime = checkInDateTime
        self.checkInBy = checkInBy
        
        if (studentName.isEmpty || checkInBy.isEmpty){
            return nil
        }
    }
}