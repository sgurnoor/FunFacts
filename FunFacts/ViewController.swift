//
//  ViewController.swift
//  FunFacts
//
//  Created by Gurnoor Singh on 11/11/15.
//  Copyright © 2015 Cyberician. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let factBook = FactBook()
    let colorWheel = ColorWheel()
    @IBOutlet weak var funFactLabel: UILabel!
    @IBOutlet weak var funFactButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        funFactLabel.text = factBook.randomFact()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showFunFact() {
        let randomColor = colorWheel.randomColor()
        view.backgroundColor = randomColor
        funFactButton.tintColor = randomColor
        funFactLabel.text = factBook.randomFact()
    }

}

