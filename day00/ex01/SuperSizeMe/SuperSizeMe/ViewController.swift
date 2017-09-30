//
//  ViewController.swift
//  SuperSizeMe
//
//  Created by tony mack on 9/30/17.
//  Copyright © 2017 tony mack. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBAction func btnClickMe(_ sender: UIButton) {
        label.text = "Hello World !"
        
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

