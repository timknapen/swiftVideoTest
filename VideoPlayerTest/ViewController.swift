//
//  ViewController.swift
//  VideoPlayerTest
//
//  Created by tim knapen on 04/11/2020.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet var playerView:PlayerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("view did load")
        playVideo()
    }
    
    func playVideo() {
        guard let url = Bundle.main.url(forResource: "Hermanubis", withExtension: ".mov") else {
            print("coudln't load video!")
            return
        }
        
        print("starting video!")
        let player = AVPlayer(url: url)
        playerView.player = player
        
        player.play()
    }
    
    @IBAction func PlayButtonPressed(Sender:UIButton){
        print ("Play again..")
        if let player = playerView.player {
            player.seek(to: CMTime(seconds: 0, preferredTimescale: 1))
            player.play()
        }
    }
    
}

