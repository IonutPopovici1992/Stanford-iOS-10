//
//  ViewController.swift
//  Calculator
//
//  Created by John on 8/15/17.
//  Copyright © 2017 John. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func touchDigit(_ sender: UIButton) {
        // drawHorizontalLine(from: 5.0, to: 8.5, using: UIColor.blue)
        let digit = sender.currentTitle!
        print("\(digit) was touched!")
    }
    
//    func drawHorizontalLine(from startX: Double, to endX: Double, using color: UIColor) {
//        
//    }
}
