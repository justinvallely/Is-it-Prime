//
//  ViewController.swift
//  Is it Prime
//
//  Created by Justin Vallely on 5/18/15.
//  Copyright (c) 2015 JMVapps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var inputNumber: UITextField!
    
    @IBOutlet var outputLabel: UILabel!
    
    @IBAction func checkPrime(sender: AnyObject) {
        
        var isPrime = true
        var numberInt = inputNumber.text.toInt()
        
        if numberInt != nil {
            var unwrappedNumber = numberInt!
    
            for var i = 2; i < unwrappedNumber; i++ {
    
                if unwrappedNumber % i == 0 {
                    isPrime = false
                }
            }
    
            if isPrime == false || unwrappedNumber == 0 {
                outputLabel.text = "\(unwrappedNumber) is not prime"
            } else {
                outputLabel.text = "\(unwrappedNumber) is prime!"
            }
            
        } else {
            outputLabel.text = "Please enter a valid number"
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

