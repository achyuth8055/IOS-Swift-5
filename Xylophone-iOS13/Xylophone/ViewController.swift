//
//  ViewController.swift
//  Xylophone
//
//  Created by Achyuth on 09/11/2022.
//  Copyright © 2022 BoSS. All rights reserved.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func pressButton(_ sender: UIButton)
    {
        print(sender.currentTitle!)
        playAudio(soundName: sender.currentTitle!)
    }
    var audioPlayer = AVAudioPlayer()
    
    var player: AVAudioPlayer!
    
    func playAudio(soundName:String)
    {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
        
        
    }
    
}
