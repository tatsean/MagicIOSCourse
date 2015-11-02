//
//  IdiomManager.swift
//  AmericanIdioms
//
//  Created by Tat Sean Pang on 02/11/2015.
//  Copyright © 2015 Tat Sean Pang. All rights reserved.
//

import Foundation

class IdiomManager
{
    func getIdioms() -> [Idiom]
    {
        var americanIdioms: [Idiom] = [Idiom]()
        americanIdioms.append(Idiom(Idiom: "Just the Ticket", Sentence: "Just the Ticket", Definition: "Just what is needed."))
        
        return americanIdioms
    }
}