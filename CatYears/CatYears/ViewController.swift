//
//  ViewController.swift
//  CatYears
//
//  Created by Prakash on 12/24/14.
//  Copyright (c) 2014 prakashn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var LabelResult: UILabel!
    @IBOutlet weak var TextFieldCatAge: UITextField!
    
    @IBAction func FindAge(sender: AnyObject) {
        var enteredAge = TextFieldCatAge.text.toInt()
        println("printing age = \(enteredAge)")
        if enteredAge != nil {  //for checking the nil
            var catYears = enteredAge! * 7  //! - dont worry that it is sure that entered age is a value
            LabelResult.text = "Your car age is \(catYears) in cat years"
        } else {
            LabelResult.text = "Please enter a whole number"
        }
        
        //println("cat's age = \(age * 7)")
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

