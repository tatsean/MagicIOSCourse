
//
//  School.swift
//  LittleScholarsTracker
//
//  Created by Tat Sean Pang on 21/11/2015.
//  Copyright © 2015 Tat Sean Pang. All rights reserved.
//

import Foundation

class School {
    var name: String
    var address: String
    var email: String
    var phone: String
    
    init (name: String, address: String, email: String, phone: String)
    {
        self.name = name
        self.address = address
        self.email = email
        self.phone = phone
    }
}
