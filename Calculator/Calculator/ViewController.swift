//
//  ViewController.swift
//  Calculator
//
//  Created by John on 8/15/17.
//  Copyright © 2017 John. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var display: UILabel!
    
    var userIsInTheMiddleOfTyping = false
    
    @IBAction func touchDigit(_ sender: UIButton) {
        // drawHorizontalLine(from: 5.0, to: 8.5, using: UIColor.blue)
        let digit = sender.currentTitle!
        // print("\(digit) was touched!")
        if userIsInTheMiddleOfTyping {
            let textCurrentlyInDisplay = display.text!
            display.text = textCurrentlyInDisplay + digit
        } else {
            display.text = digit
            userIsInTheMiddleOfTyping = true
        }
    }
    
    var displayValue: Double {
        get {
            return Double(display.text!)!
        }
        set {
            display.text = String(newValue)
        }
    }
    
    @IBAction func performOperation(_ sender: UIButton) {
        
        if let mathematicalSymbol = sender.currentTitle {
            switch mathematicalSymbol {
                case "π":
                    displayValue = Double.pi
                case "√":
                    displayValue = sqrt(displayValue)
                default:
                    break
            }
        }
    }
    
//    func drawHorizontalLine(from startX: Double, to endX: Double, using color: UIColor) {
//        
//    }
}
