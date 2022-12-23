//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {
    
    var player:AVAudioPlayer?
    let hardness:[String:Int] = ["Hard":6,"Medium":4,"Soft":2]
    var MaxTimer = 0
    var RemaningSeconds = 0
    var timer = Timer()
    var rept = 2
    @IBOutlet weak var TitleLable: UILabel!
    @IBOutlet weak var progressTimer: UIProgressView!
    

    @IBAction func hardnessSelected(_ sender : UIButton){
        
        timer.invalidate()
        let btnPressed = sender.currentTitle!
        MaxTimer = hardness[btnPressed]!
        TitleLable.text = sender.currentTitle
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
        
    }
    
    @objc func updateTimer()
    {
        if RemaningSeconds < MaxTimer {
                print("\(RemaningSeconds+1) seconds")
           
                var progTimer = Float(RemaningSeconds)/Float(MaxTimer)
                print(progTimer)
                progressTimer.progress = progTimer
                RemaningSeconds += 1
            }
        
        else {
            
            timer.invalidate()
            progressTimer.progress = 1.0
            TitleLable.text = "Done.!"
            
            
            if rept > 0 {
                guard let path = Bundle.main.path(forResource: "alarm_sound", ofType: "mp3")else{return}
                let soundURl = URL(fileURLWithPath: path)
                player = try? AVAudioPlayer(contentsOf: soundURl)
                player?.prepareToPlay()
           
                player!.play()
                
                player?.pause()
                player?.stop()
                rept -= 1
            }
            
        }
    }

}
