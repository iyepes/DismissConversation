//
//  InterfaceController.swift
//  ThisIsAwkward WatchKit Extension
//
//  Created by Jonathan Schapiro on 11/23/14.
//  Copyright (c) 2014 Jonathan Schapiro. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    
    @IBOutlet weak var statusLabel: WKInterfaceLabel!
    
    @IBOutlet weak var callButton: WKInterfaceButton!
    
    @IBOutlet weak var snoozeButton: WKInterfaceButton!
    
    
    var timer: NSTimer!
    var timeInterval:Int?
    
    
    override init(context: AnyObject?) {
        // Initialize variables here.
        super.init(context: context)
        
        timer = NSTimer.scheduledTimerWithTimeInterval(7.0, target: self, selector: Selector("displayUIElements"), userInfo: nil, repeats: false)
        
        
        // Configure interface objects here.
        NSLog("%@ init", self)
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        
        
        super.willActivate()
        NSLog("%@ will activate", self)
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        NSLog("%@ did deactivate", self)
        
        super.didDeactivate()
    }
    
    
    func hideUIElements() -> (){
        self.statusLabel.setHidden(true)
        self.callButton.setHidden(true)
        self.snoozeButton.setHidden(true)
    }
    
    func displayUIElements() ->(){
        println("timer")
        self.statusLabel.setHidden(false)
        self.callButton.setHidden(false)
        self.snoozeButton.setHidden(false)
    }
    
    @IBAction func call() {
        println("Call button pressed!")
    }
    
    @IBAction func snooze() {
        println("Snooze button pressed!")
        
        hideUIElements()
        timer = NSTimer.scheduledTimerWithTimeInterval(7.0, target: self, selector: Selector("displayUIElements"), userInfo: nil, repeats: false)
    }
    
    
    
}
