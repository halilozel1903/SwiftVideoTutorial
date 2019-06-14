//
//  ViewController.swift
//  StreamVideo
//
//  Created by macbookpro on 14.06.2019.
//  Copyright © 2019 halilozel. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation


class ViewController: UIViewController {
    
    // AVPlayerViewController olayını ele almak için streamController nesnesi tanımlandı.
    var streamController = AVPlayerViewController()
    
    // AVPlayer nesnesi tanımlandı.
    var streamPlayer : AVPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // stream video
        
        // streamVideoURL değerinde video ile ilgili bilgiler - url bilgisi
        let streamVideoURL : NSURL? = NSURL(string: "https://sample-videos.com/video123/mp4/480/big_buck_bunny_480p_20mb.mp4")
        
        // streamPlayer nesnesine atandı
        streamPlayer = AVPlayer(url: streamVideoURL! as URL)
        
        // streamController içindeki player değerine player nesnesi atandı.
        streamController.player = streamPlayer
        

        
    }

    // butona tıklanınca neler olacak
    @IBAction func streamVideo(_ sender: Any) {
        
        // present işlemi için controller, animasyon ve işlem sonucunda neler olacak tanımlamaları
        self.present(self.streamController, animated: true, completion: {
            
            // streamController player nesnesini play metodunu verip oynatma işlemi başlıyor.
            self.streamController.player?.play()
        })
        
    }
    
}

