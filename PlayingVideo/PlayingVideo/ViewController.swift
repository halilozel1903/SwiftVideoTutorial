//
//  ViewController.swift
//  PlayingVideo
//
//  Created by macbookpro on 14.06.2019.
//  Copyright © 2019 halilozel. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit

class ViewController: UIViewController {

    // AVPlayerViewController olayını ele almak için playerController nesnesi tanımlandı.
    var playerController = AVPlayerViewController()
    
    // AVPlayer nesnesi tanımlandı.
    var player : AVPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // videoString değerinde video ile ilgili bilgiler verildi. -> music.mp4
        let videoString = Bundle.main.path(forResource: "music", ofType: "mp4")
        
        // player nesnesine URL değeri atandı.
        player = AVPlayer(url: URL(fileURLWithPath: videoString!))
        
        // PlayerController içindeki player değerine player nesnesi atandı.
        playerController.player = player

    }


    // buttona tıklanınca video oynatma işlemi
    @IBAction func playVideo(_ sender: Any) {
        
        // present işleminde controller, animation, completion olayları
        self.present(self.playerController, animated: true, completion: {
            
            // PlayerController içindeki player nesnesini oynatmaya başla
            self.playerController.player?.play()
        })
    }
}

