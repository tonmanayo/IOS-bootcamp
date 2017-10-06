//
//  ViewController.swift
//  ex00
//
//  Created by Tony MACK on 2017/10/05.
//  Copyright © 2017 Tony MACK. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var lblDate1: UIDatePicker!
    @IBOutlet weak var lblDescription: UITextView!
    @IBOutlet weak var lblName: UITextField!

    @IBOutlet weak var tabelView: UITableView! {
        didSet {
            tabelView.delegate = self
            tabelView.dataSource = self
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        tabelView?.reloadData()
        tabelView?.estimatedRowHeight = 800
        tabelView?.rowHeight = UITableViewAutomaticDimension
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Data.People.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DeathNote") as! DeathNoteTableViewCell
        cell.deathNote = Data.People[indexPath.row]
        return cell
    }
    @IBAction func unwindToVC(segue: UIStoryboardSegue) {
        
    }
    @IBAction func goBackToOneButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "unwindSegue", sender: self)
    }
    
    @IBAction func btnDone(_ sender: UIBarButtonItem) {
        print(lblName.text!)
        print(lblDescription.text!)
        print(lblDate1.date)
        
        if lblName.text! != "" && lblDescription.text == "" {
            Data.People.append((lblName.text!, "", String(describing: lblDate1.date)))
        } else if (lblName.text! == ""){
        } else {
            Data.People.append((lblName.text!, lblDescription.text!, String(describing: lblDate1.date)))
        }
        
        goBackToOneButtonTapped("foo")
    }
}
