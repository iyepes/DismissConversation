//
//  ViewController.swift
//  HCOStartTimer
//
//  Created by Isabel Yepes on 23/11/14.
//  Copyright (c) 2014 Isabel Yepes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timerTextField: UITextField!
    
    @IBOutlet weak var phoneTextField: UITextField!
    
    @IBAction func onTap(sender: AnyObject) {
        self.view.endEditing(true)
    }
    
    @IBAction func startButtonPressed(sender: AnyObject) {
        println("Time: \(timerTextField.text), Phone: \(phoneTextField.text)")
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

