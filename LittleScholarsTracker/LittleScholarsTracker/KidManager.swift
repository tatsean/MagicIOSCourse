//
//  KidManager.swift
//  LittleScholarsTracker
//
//  Created by Tat Sean Pang on 21/11/2015.
//  Copyright © 2015 Tat Sean Pang. All rights reserved.
//

import Foundation

class KidManager
{
    var scholars = [Scholar]()

    func addupdateScholar(scholar: Scholar) -> Bool
    {
        // TODO: add teacher to any data storage
        //
        return true;
    }
    
    func deleteScholar(kidName: String) -> Bool
    {
        // TODO: delete teacher from data storage
        //
        return true;
    }
    
    func listScholar() -> [Scholar]
    {
        // TODO: list class room
        //
        let scholar1 = Scholar(fullName: "", age: 1, parentName: "Siong", parentEmail: "siong@schooldude.com", parentMobile: "0165679890")
        let scholar2 = Scholar(fullName: "", age: 1, parentName: "Siong", parentEmail: "siong@schooldude.com", parentMobile: "0165679890")
        let scholar3 = Scholar(fullName: "", age: 1, parentName: "Siong", parentEmail: "siong@schooldude.com", parentMobile: "0165679890")
        
        scholars += [scholar1, scholar2, scholar3]
        
        return scholars
    }
    
    func getScholar(fullName: String) -> Scholar?
    {
        var scholars = [Scholar]()
        
        if let index = scholars.indexOf({$0.fullName == fullName})
        {
            return scholars[index]
        }
        
        return nil
    }

}