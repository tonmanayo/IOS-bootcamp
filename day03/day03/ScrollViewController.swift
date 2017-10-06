//
//  ScrollViewController.swift
//  day03
//
//  Created by Tony MACK on 2017/10/06.
//  Copyright © 2017 Tony MACK. All rights reserved.
//

import UIKit

class ScrollViewController: UIViewController {

    var imageView : UIImageView?
    var image : UIImage?
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        image = UIImage(named: "frac1")!
        imageView = UIImageView(image: image)
        scrollView.addSubview(imageView!)
        scrollView.contentSize = (imageView?.frame.size)!
        scrollView.maximumZoomScale = 100
        scrollView.minimumZoomScale = 0.3
    }
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imageView
    }
}
