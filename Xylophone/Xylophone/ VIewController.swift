//
//  ViewController.swift
//  Xylophone
//
//  Created by Tejas Anil Shah on 19/09/17.
//  Copyright © 2017 Tejas. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController{
    
    var audioPlayer: AVAudioPlayer?
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func notePressed(_ sender: UIButton) {
        let url = Bundle.main.url(forResource: "note\(sender.tag)", withExtension: "wav")!
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            guard let audioPlayer = audioPlayer else { return }
            audioPlayer.prepareToPlay()
            audioPlayer.play()
            
        } catch let error{
            print(error)
        }
        
    }
    
  

}

