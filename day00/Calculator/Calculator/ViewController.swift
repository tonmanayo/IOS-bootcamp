//
//  ViewController.swift
//  Calculator
//
//  Created by Tony MACK on 2017/10/02.
//  Copyright © 2017 Tony MACK. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var display: UILabel!
    var total:Double = 0
    var userTyping:Bool = false
    var symbol:String = ""
    var prev:Double = 0
    
    @IBAction func nbrsClick(_ sender: UIButton) {
        let digit = sender.currentTitle!
        if userTyping == true {
            let currentDisplay:String = display.text!
            display.text = currentDisplay + digit
        } else {
            display.text = digit
            userTyping = true
        }
    }
    
    @IBAction func btnMaths(_ sender: UIButton) {
        userTyping = false
        switch symbol {
            case "+":
                total = prev + Double(display.text!)!
                display.text = String(total)
            case "-":
                total = prev - Double(display.text!)!
                display.text = String(total)
            case "/":
                if (prev == 0 || display.text! == "" || display.text! == "0") {
                    display.text = "Error!"
                    break
                } else {
                
                total = Double(prev) / Double(display.text!)!
                display.text = String(total)
            }
            case "*":
                total = prev * Double(display.text!)!
                display.text = String(total)
            default:
                break
        }
        if (sender.currentTitle! == "÷" ||
            sender.currentTitle! == "*" ||
            sender.currentTitle! == "-" ||
            sender.currentTitle! == "+") {
            prev = Double(display.text!)!
        }
        switch sender.currentTitle! {
        case "+":
            symbol = "+"
        case "-":
            symbol = "-"
        case "÷":
            symbol = "/"
        case "*":
            symbol = "*"
        default:
            break
        }
        
        if (sender.currentTitle! == "=") {
            print(symbol)
            switch symbol {
            case "+":
                display.text = String(total)
            case "-":
                display.text = String(total)
            case "/":
                display.text = String(total)
            case "*":
                display.text = String(total)
            default:
                break
            }
            symbol = "="
        }
        if sender.currentTitle! == "AC" {
            total = 0
            display.text = ""
            prev = 0
            symbol = ""
            userTyping = false
        }
        
    }
    
}

