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
        // Do any additional setup after loading the view.
        print("view did load")
        playVideo()
    }
    
    func playVideo() {
        guard let url = Bundle.main.url(forResource: "Hermanubis", withExtension: ".mov") else {
            print("coudln't load video!")
            return
        }
        
        print("starting video! \(url)")
        
        let player = AVPlayer(url: url)
        playerView.player = player
        
        player.play()
    }

}

