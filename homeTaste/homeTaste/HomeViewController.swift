//
//  HomeViewController.swift
//  homeTaste
//
//  Created by Norton Wei on 13/6/2017.
//  Copyright © 2017 WEI Wenzhou. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UIScrollViewDelegate {
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var coverImage: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        scrollView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        var scale = 1.0 - scrollView.contentOffset.y / scrollView.frame.size.height
        scale = max(1.0, scale)
        coverImage.transform = CGAffineTransform(scaleX: scale, y: scale)
    }
    
    //func scrollview

    @IBAction func searchButtonClicked(_ sender: Any) {
        
    }

}

