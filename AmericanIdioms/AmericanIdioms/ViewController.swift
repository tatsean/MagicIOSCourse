//
//  ViewController.swift
//  AmericanIdioms
//
//  Created by Tat Sean Pang on 02/11/2015.
//  Copyright © 2015 Tat Sean Pang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblIdiom: UILabel!
    @IBOutlet weak var lblDefinition: UILabel!
    @IBOutlet weak var lblSentence: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        displayIdioms()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func displayIdioms()
    {
        let idiomManager = IdiomManager()
        let idioms = idiomManager.getIdioms()

        for idiom in idioms
        {
            lblIdiom.text = idiom.Idiom
            lblDefinition.text = idiom.Definition
            lblSentence.text = idiom.Sentence
        }
    }
}

