//
//  InterfaceController.swift
//  HCOStartTimer WatchKit Extension
//
//  Created by Isabel Yepes on 23/11/14.
//  Copyright (c) 2014 Isabel Yepes. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet weak var timerLabel: WKInterfaceTimer!
    
    override init(context: AnyObject?) {
        // Initialize variables here.
        super.init(context: context)
        
        // Configure interface objects here.
        NSLog("%@ init", self)
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        NSLog("%@ will activate", self)
        let nowDate:NSDate = NSDate()
        println("\(nowDate)")
        timerLabel.setDate(nowDate)
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        NSLog("%@ did deactivate", self)
        super.didDeactivate()
    }

    @IBAction func snoozeButton() {
        
    }
    
    @IBAction func stopButton() {
        timerLabel.stop()
    }
    
}
