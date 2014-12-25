//
//  ViewController.swift
//  Stopwatch
//
//  Created by Prakash on 12/25/14.
//  Copyright (c) 2014 prakash. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var timer = NSTimer()

    @IBOutlet weak var labelTimer: UILabel!
    
    @IBOutlet weak var labelMilliSec: UILabel!
    
    @IBAction func Cancel(sender: UIBarButtonItem) {
        timer.invalidate()
        labelTimer.text = String(0)
        labelMilliSec.text = String(0)
    }
    @IBAction func Pause(sender: UIBarButtonItem) {
        timer.invalidate()
    }
    @IBAction func Play(sender: UIBarButtonItem) {
        timer = NSTimer.scheduledTimerWithTimeInterval(0.001, target: self, selector: Selector("result"), userInfo: nil, repeats: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }
    var countMilli = 0
    var countSec = 0
    func result() {
        if(countMilli >= 1000) {
            countMilli = 0
            labelTimer.text = String(++countSec)
        }
        labelMilliSec.text = "\(countMilli++)"
//        println("test \(count++)")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

