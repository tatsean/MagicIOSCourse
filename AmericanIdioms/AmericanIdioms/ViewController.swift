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
    
    @IBOutlet weak var btnNextIdiom: UIButton!
    @IBOutlet weak var btnPreviousIdiom: UIButton!
    
    var idioms: [Idiom]!
    var index: Int = -1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        getIdioms()
        displayFirstIdiom()
    }
    
    func displayFirstIdiom()
    {
        index = 0
        
        lblIdiom.text = idioms[index].Idiom
        lblDefinition.text = idioms[index].Definition
        lblSentence.text = idioms[index].Sentence
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func getIdioms()
    {
        let idiomManager = IdiomManager()
        idioms = idiomManager.getIdioms()
    }
    
    @IBAction func btnReset(sender: AnyObject) {
        displayFirstIdiom()
        btnPreviousIdiom.enabled = true
        btnNextIdiom.enabled = true
    }
    
    @IBAction func btnPreviousIdiom(sender: AnyObject) {
        --index
        
        if (index >= 0)
        {
            lblIdiom.text = idioms[index].Idiom
            lblDefinition.text = idioms[index].Definition
            lblSentence.text = idioms[index].Sentence
        }
        
        if (index == 0)
        {
            btnPreviousIdiom.enabled = false
        }
        
        if (index < 4)
        {
            btnNextIdiom.enabled = true
        }
    }
    
    @IBAction func btnNextIdiom(sender: AnyObject) {
        ++index
        
        if (index < 5)
        {
            lblIdiom.text = idioms[index].Idiom
            lblDefinition.text = idioms[index].Definition
            lblSentence.text = idioms[index].Sentence
        }
        
        if (index > 0)
        {
            btnPreviousIdiom.enabled = true
        }
            
        if (index == 4)
        {
            // --index
            btnNextIdiom.enabled = false
        }
    }
    
    
    @IBAction func sliderValueChanged(sender: UISlider) {
        let index = Int(sender.value * 2)
        print (index)
        
//        lblIdiom.text = idioms[index].Idiom
//        lblDefinition.text = idioms[index].Definition
//        lblSentence.text = idioms[index].Sentence
    }
}

