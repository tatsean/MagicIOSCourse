//
//  AttendanceManager.swift
//  LittleScholarsTracker
//
//  Created by alice on 11/22/15.
//  Copyright © 2015 Tat Sean Pang. All rights reserved.
//

import Foundation

class AttendanceManager {
    
    var attendanceList: [Attendance?] = [Attendance?]()
    
    func addAttendance(attendance: Attendance) -> Bool {
        attendanceList.append(attendance)
        return true
    }
    
    func deleteAttendance(attendance: Attendance) -> Bool {
        if let index = attendanceList.indexOf({$0?.studentName == attendance.studentName && $0?.checkInDateTime == attendance.checkInDateTime}){
            attendanceList.removeAtIndex(index)
        }
        else{
            return false
        }
        return true
    }
    
    func listCheckIn() -> [Attendance?]{
        let attendance1 = Attendance(studentName: "student1", checkInBy: "parent1")
        
        attendanceList.append(attendance1!)
        return attendanceList
    }
    
    func listCheckOut() -> [Attendance]{
        let attendancelist = [Attendance]()
        return attendancelist
    }
 
    //checkout
    func updateAttendance(studentName: String, passCode: Int) -> Bool {
        //if parent key in passcode same as the stored one, then it can be updated
        let scholarManager = KidManager()
        let student:Scholar = scholarManager.getScholar(studentName)!
        let passcode = student.passcode
        
        if(passcode == passCode){
            //update
        }
        else{
            //do nothing
            return false
        }
        return true
    }
}





