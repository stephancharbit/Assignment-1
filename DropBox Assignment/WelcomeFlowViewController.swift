//
//  WelcomeFlowViewController.swift
//  DropBox Assignment
//
//  Created by Stephan Charbit on 10/17/16.
//  Copyright © 2016 Stephan Charbit. All rights reserved.
//

import UIKit

class WelcomeFlowViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
            scrollView.contentSize = CGSize(width: 1125, height: 667)
            scrollView.delegate = self
   }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        // Get the current page based on the scroll offset
        var page : Int = Int(round(scrollView.contentOffset.x / 375))
        // Set the current page, so the dots will update
        pageControl.currentPage = page
    }
    
}
