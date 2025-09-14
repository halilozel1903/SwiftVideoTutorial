//
//  ViewController.swift
//  PlayingVideo
//
//  Updated by halilozel on 01.09.2024.
//  Copyright © 2024 halilozel. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit

class ViewController: UIViewController {
    
    // A playerController object is defined to handle the AVPlayerViewController event.
    var playerController = AVPlayerViewController()
    
    // The AVPlayer object has been defined.
    var player : AVPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // The videoString value gives information about the video. -> music.mp4
        let videoString = Bundle.main.path(forResource: "music", ofType: "mp4")
        
        // The URL value is assigned to the player object.
        player = AVPlayer(url: URL(fileURLWithPath: videoString!))
        
        // A player object is assigned to the player value in the PlayerController.
        playerController.player = player
        
    }
    
    
    // Video playback by clicking the button
    @IBAction func playVideo(_ sender: Any) {
        
        // Controller, animation, completion events in present action
        self.present(self.playerController, animated: true, completion: {
            
            // Start playing player object in PlayerController
            self.playerController.player?.play()
        })
    }
}

