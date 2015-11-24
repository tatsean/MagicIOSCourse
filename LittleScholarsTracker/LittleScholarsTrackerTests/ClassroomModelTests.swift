//
//  ClassroomModelTests.swift
//  LittleScholarsTracker
//
//  Created by Tat Sean Pang on 21/11/2015.
//  Copyright © 2015 Tat Sean Pang. All rights reserved.
//

import Foundation
import XCTest
@testable import LittleScholarsTracker

class ClassroomModelTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testClassroomAdd()
    {
        let classroom = Classroom(classroomName: "Kindness", ageGroup: 4)
        let classroomManager = ClassroomManager()
        
        let countBeforeAdd = classroomManager.listClassRoom().count
        
        let addResult = classroomManager.addUpdateClassroom(classroom!)
        
        XCTAssertGreaterThan(classroomManager.classrooms.count, countBeforeAdd)
        
        XCTAssertEqual(addResult, true)
    }
    
    func testClassroomInitialization()
    {
        let classRoomWithName = Classroom(classroomName: "Goodness", ageGroup: 2)
        XCTAssertNotNil(classRoomWithName)
        
        // Failure cases.
        let classRoomWithNoName = Classroom(classroomName: "", ageGroup: 4)
        XCTAssertNil(classRoomWithNoName, "Empty name is invalid")
    }
    
    func testClassroomDelete()
    {
        let classroomManager = ClassroomManager()
        let countBeforeDelete = classroomManager.listClassRoom().count
        let deleteResult = classroomManager.deleteClassroom("Faith")
        
        XCTAssertEqual(deleteResult, true)
        
        XCTAssertLessThan(countBeforeDelete, classroomManager.classrooms.count)
    }
}