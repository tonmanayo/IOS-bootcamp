//
//  ViewController.swift
//  day00ex00
//
//  Created by tony mack on 10/2/17.
//  Copyright © 2017 tony mack. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


	@IBOutlet weak var display: UILabel!
	@IBAction func btnClickMe(_ sender: UIButton) {
        display.text = "hello World!"
    }
}

