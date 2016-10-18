//
//  TOSWebViewController.swift
//  DropBox Assignment
//
//  Created by Stephan Charbit on 10/17/16.
//  Copyright © 2016 Stephan Charbit. All rights reserved.
//

import UIKit

class TOSWebViewController: UIViewController {

    @IBOutlet weak var TOSWebView: UIWebView!
    let url = "https://www.dropbox.com/terms?mobile=1"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let requestURL = URL(string:url)
        // Place the URL in a URL Request.
        let request = URLRequest(url: requestURL!)
        // Load Request into WebView.
        TOSWebView.loadRequest(request)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didTapDoneBtn(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
