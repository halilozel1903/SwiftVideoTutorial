//
//  ViewController.swift
//  StreamVideo
//
//  Updated by halilozel on 01.09.2024.
//  Copyright © 2024 halilozel. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation


class ViewController: UIViewController {
    
    // A streamController object is defined to handle the AVPlayerViewController event.
    var streamController = AVPlayerViewController()
    
    // The AVPlayer object has been defined.
    var streamPlayer : AVPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Stream Video URL value video related information - url info
        let streamVideoURL = URL(string: "https://sample-videos.com/video123/mp4/480/big_buck_bunny_480p_20mb.mp4")
        
        // Assigned to streamPlayer object
        streamPlayer = AVPlayer(url: streamVideoURL!)
        
        // Player object is assigned to player value in streamController.
        streamController.player = streamPlayer
    }
    
    // What will happen when the button is clicked?
    @IBAction func streamVideo(_ sender: Any) {
        
        // Definitions of controller for present operation, animation and what will happen as a result of operation.
        self.present(self.streamController, animated: true, completion: {
            
            // The streamController gives the player object the play method and the playback starts.
            self.streamController.player?.play()
        })
        
    }
    
}

