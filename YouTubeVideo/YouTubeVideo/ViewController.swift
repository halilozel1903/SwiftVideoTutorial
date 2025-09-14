//
//  ViewController.swift
//  YouTubeVideo
//
//  Updated by halilozel on 01.09.2024.
//  Copyright © 2024 halilozel. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    // webView object
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // YouTube Embed String
        let embedString = "<iframe width=\"90%\" height=\"400\" src=\"https://www.youtube.com/embed/hNQFjqDvPhA\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>"
        
        // Html load action in webview object - give the link
        webView.loadHTMLString(embedString, baseURL: nil)
    }
    
}

