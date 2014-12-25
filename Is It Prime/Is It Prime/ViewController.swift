//
//  ViewController.swift
//  Is It Prime
//
//  Created by Prakash on 12/25/14.
//  Copyright (c) 2014 prakash. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var textNum: UITextField!
    @IBOutlet weak var labelIsPrime: UILabel!
    
    @IBAction func buttonIsItPrime(sender: AnyObject) {
        var enteredValue = textNum.text.toInt()
        println("entered value is \(enteredValue)")
        if enteredValue != nil {
            var boolPrime = isPrime(enteredValue!)
            if(boolPrime) {
                labelIsPrime.text = "Prime Number!! Hakuna Matata"
            } else {
                labelIsPrime.text = "Not it is not PRIME!!"
            }
        } else {
            labelIsPrime.text = "Please Enter a Valid Number"
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
    
    func isPrime(var n:Int) -> Bool { //O(sqrt(n))
        /*
        1. If the number is less than 2 return false.
        2. If the numbers is 2 return true.
        3. let x = square_root_of (n)
        4. for i = 3 to x
        5. if ( x % number == 0) return false;
        6. return true;
        */
        if(n < 2) { return false }
        if(n == 2) { return true }
        let x = sqrt(Double(n))
        for var i = 2.0 ; i <= (x); i++ {
            if Double(n) % i == 0 { return false }
            //            i
        }
        return true
    }


}

