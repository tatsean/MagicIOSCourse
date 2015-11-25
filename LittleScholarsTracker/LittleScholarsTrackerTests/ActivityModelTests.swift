//
//  ActivityModelTests.swift
//  LittleScholarsTracker
//
//  Created by alice on 11/24/15.
//  Copyright © 2015 Tat Sean Pang. All rights reserved.
//

import Foundation
import XCTest
@testable import LittleScholarsTracker

class ActivityModelTests: XCTestCase {
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testActivityAdd(){
        let activity = Activity(activityTypes: ActivityTypes.Eat, studentName: "Aileen")
        
        let activityManager = ActivityManager()
        let countBefore = activityManager.listActivityByStudent("Aileen").count
        let result = activityManager.addUpdateActivity(activity!)
        let countAfter = activityManager.listActivityByStudent("Aileen").count
        XCTAssertGreaterThan(countAfter, countBefore)
        XCTAssertEqual(result, true)
    }
    
    func testActivityInitialization(){
        let activityWithName = Activity(activityTypes: ActivityTypes.Incident, studentName: "Alien")
        XCTAssertNotNil(activityWithName)
        
        
        let activityWithNoName = Activity(activityTypes: ActivityTypes.Bath, studentName: "")
        XCTAssertNil(activityWithNoName, "Empty name is invalid")
    }
    
}