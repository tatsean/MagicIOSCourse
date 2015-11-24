//
//  TeacherManager.swift
//  LittleScholarsTracker
//
//  Created by Tat Sean Pang on 21/11/2015.
//  Copyright © 2015 Tat Sean Pang. All rights reserved.
//

import Foundation

class TeacherManager
{
    var teachers: [Teacher] = [Teacher]()
    
    func addUpdateTeacher(teacher: Teacher) -> Bool
    {
        // TODO: add teacher to any data storage
        //
        return true;
    }
    
    func deleteTeacher(teacherName: String) -> Bool
    {
        // TODO: delete teacher from data storage
        //
        return true;
    }
    
    func listTeacher() -> [Teacher]
    {
        // TODO: list class room
        //
        
        let teacher1 = Teacher(fullName: "Alice", mobileNumber: "0163456765")
        let teacher2 = Teacher(fullName: "Twa", mobileNumber: "016456787")
        let teacher3 = Teacher(fullName: "Program", mobileNumber: "0345435345")
        
        teachers += [teacher1, teacher2, teacher3]
        
        return teachers
    }
    
    func getTeacher(teacherName: String) -> Teacher?
    {
        // TODO: get single teacher info
        //
        let teachers = [Teacher]()
        
        if let index = teachers.indexOf({$0.fullName == teacherName})
        {
            return teachers[index]
        }
        
        return nil
    }
}