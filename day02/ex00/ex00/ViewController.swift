//
//  ViewController.swift
//  ex00
//
//  Created by Tony MACK on 2017/10/05.
//  Copyright © 2017 Tony MACK. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

 
    @IBOutlet weak var tabelView: UITableView! {
        didSet {
            tabelView.delegate = self
            tabelView.dataSource = self
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Data.People.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DeathNote") as! DeathNoteTableViewCell
        cell.deathNote = Data.People[indexPath.row]
        return cell
    }
}
