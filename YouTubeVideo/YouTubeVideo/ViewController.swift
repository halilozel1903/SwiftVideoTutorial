//
//  ViewController.swift
//  YouTubeVideo
//
//  Created by macbookpro on 14.06.2019.
//  Copyright © 2019 halilozel. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    
    // webView nesnesi
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // YouTube Video
        
        // youtube embed string
        let embedString = "<iframe width=\"1920\" height=\"1080\" src=\"https://www.youtube.com/embed/hNQFjqDvPhA\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>"
        
        // webview nesnesinde html yükleme işlemi - linki verme
        webView.loadHTMLString(embedString, baseURL: nil)
    }


}

