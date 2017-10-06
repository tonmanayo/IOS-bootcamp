//
//  DeathNoteTableViewCell.swift
//  ex00
//
//  Created by Tony MACK on 2017/10/05.
//  Copyright © 2017 Tony MACK. All rights reserved.
//

import UIKit

class DeathNoteTableViewCell: UITableViewCell {

   
    @IBOutlet weak var lblDescription: UITextView!
    @IBOutlet weak var lblDate: UILabel!
    @IBOutlet weak var lblName: UILabel!

    var deathNote: (String, String, String)? {
        didSet {
            if let f = deathNote {
                lblDescription?.text = f.1
                lblDate?.text = f.2
                lblName?.text = f.0
            }
        }
    }

}
