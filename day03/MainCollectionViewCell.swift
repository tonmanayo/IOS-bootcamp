//
//  MainCollectionViewCell.swift
//  day03
//
//  Created by Tony MACK on 2017/10/06.
//  Copyright © 2017 Tony MACK. All rights reserved.
//

import UIKit

class MainCollectionViewCell: UICollectionViewCell{
    @IBOutlet weak var mainImageView: CustomImageView!
    @IBOutlet weak var activityOut: UIActivityIndicatorView!
    
    
    var image : String? {
        didSet {
            if let url = URL.init(string: image!) {
                activityOut.hidesWhenStopped = true
                mainImageView.downloadedFrom(url: url)
            }
        }
        
    }
}
