//
//  ViewController.swift
//  FunFacts
//
//  Created by Gurnoor Singh on 11/11/15.
//  Copyright © 2015 Cyberician. All rights reserved.
//  Modified upon Teamtreehouse.org's iOS tutorial.
//

import UIKit

class ViewController: UIViewController {

    // initialisation of Fact Book and Color Wheel
    let factBook = FactBook()
    let colorWheel = ColorWheel()
    
    // initialisation of storage to avoid duplication of color and facts.
    var colorStorage = UIColor(red: 90/255.0, green: 187/255.0, blue: 181/255.0, alpha: 1.0)
    var factStorage = "Hello! It's me"
    
    // Label and button outlets
    @IBOutlet weak var funFactLabel: UILabel!
    @IBOutlet weak var funFactButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // initial label
        funFactLabel.text = factBook.randomFact()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // action initiated on clicking the button
    @IBAction func showFunFact() {
        
        //choosing a random property
        var randomColor = colorWheel.randomColor()
        var randomFact = factBook.randomFact()
        
        //checking with storage
        while (colorStorage == randomColor) {
            randomColor = colorWheel.randomColor()
        }
        while (factStorage == randomFact) {
            randomFact = factBook.randomFact()
        }
        
        //apply properties to view
        view.backgroundColor = randomColor
        funFactButton.tintColor = randomColor
        funFactLabel.text = randomFact
        
        //update storage
        colorStorage = randomColor
        factStorage = randomFact
        
    }

}

