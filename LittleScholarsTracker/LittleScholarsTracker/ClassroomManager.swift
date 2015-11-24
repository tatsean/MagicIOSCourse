//
//  ClassroomManager.swift
//  LittleScholarsTracker
//
//  Created by Tat Sean Pang on 21/11/2015.
//  Copyright © 2015 Tat Sean Pang. All rights reserved.
//

import Foundation

class ClassroomManager
{
    var classrooms: [Classroom] = [Classroom]()
    
    func addUpdateClassroom(classroom: Classroom) -> Bool
    {
        // TODO: add classroom to any data storage
        //
        classrooms.append(classroom)
        return true;
    }
    
    func deleteClassroom(classroomName: String) -> Bool
    {
        // TODO: delete classroom from data storage
        //
        if let index = classrooms.indexOf({$0.classroomName == classroomName})
        {
            classrooms.removeAtIndex(index)
        }
        else
        {
            return false
        }
        
        return true;
    }

    func listClassRoom() -> [Classroom]
    {
        // TODO: list class room 
        //
        // var classrooms = [Classroom]()
        
        let classRoom1 = Classroom(classroomName: "", ageGroup: 4)
        let classRoom2 = Classroom(classroomName: "Faith", ageGroup: 5)
        let classRoom3 = Classroom(classroomName: "Honesty", ageGroup: 6)
        
        classrooms += [classRoom1!, classRoom2!, classRoom3!]
        
        return classrooms
    }

    func getClassRoom(classRoomName: String) -> Classroom? {
        // TODO: get single class room data
        //
        // var classrooms = [Classroom]()
        if let index = classrooms.indexOf({$0.classroomName == classRoomName})
        {
            return classrooms[index]
        }
        
        return nil
    }
}
