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
        americanIdioms.append(Idiom(Idiom: "Just the Ticket", Sentence: "A good, hot cup of coffee will be just the ticket.", Definition: "very ​suitable and ​exactly what is ​needed"))
        
        americanIdioms.append(Idiom(Idiom: "cut-and-dried decision", Sentence: "We need a cut-and-dried decision by the end of the week", Definition: "already decided and unlikely to be changed"))
        
        americanIdioms.append(Idiom(Idiom: "spreading myself too thin", Sentence: "I realised I'd been spreading myself too thin so I resigned as secretary of the golf club", Definition: "to try to do too many things at the same time, so that you cannot give enough time or attention to any of them"))
        
        americanIdioms.append(Idiom(Idiom: "get butterflies in my stomach", Sentence: "Whenever I have to speak in public, I get butterflies in my stomach.", Definition: "a nervous feeling in one's stomach"))
        
        americanIdioms.append(Idiom(Idiom: "shooting the breeze", Sentence: "We spent the entire afternoon just shooting the breeze", Definition: "to talk with someone or a group of people about things which are not important"))
        
        return americanIdioms
    }
}