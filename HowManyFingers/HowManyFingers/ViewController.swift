//
//  ViewController.swift
//  HowManyFingers
//
//  Created by Prakash on 12/24/14.
//  Copyright (c) 2014 prakash. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //Outlet
    @IBOutlet weak var labelGuess: UILabel!
    @IBOutlet weak var textNumber: UITextField!
    
    //Action
    @IBAction func buttonGuess(sender: UIButton) {
        var randomNumber = Int(arc4random_uniform(5))
        
        var guessedNumber = textNumber.text.toInt()
        
        if( guessedNumber != nil && guessedNumber < 6) {
            if(guessedNumber == randomNumber)
            {
                labelGuess.text = "You guessed the number correct. It is \(guessedNumber!)"
            } else {
                labelGuess.text = "You guessed it wrong. It was \(randomNumber)"
            }
        } else {
            labelGuess.text = "Please enter a Valid number"
        }

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

