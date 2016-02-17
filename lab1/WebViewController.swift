//
//  WebViewController.swift
//  lab1
//
//  Created by Admin on 10.02.16.
//  Copyright © 2016 Admin. All rights reserved.
//

import UIKit

class WebViewController: UIViewController {
    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = NSURL(string: "http://google.com")
        let req = NSURLRequest(URL: url!)
        webView.loadRequest(req)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}