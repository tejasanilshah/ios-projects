//
//  ViewController.swift
//  Dicee
//
//  Created by Tejas Anil Shah on 14/09/17.
//  Copyright © 2017 Tejas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImage1: UIImageView!
    @IBOutlet weak var diceImage2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDiceFaces()
    }

    @IBAction func rollButtonPressed() {
        updateDiceFaces()
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            updateDiceFaces()
        }
    }
    
    func updateDiceFaces() -> Void {
        let randomNumber1 = arc4random_uniform(6) + 1
        let randomNumber2 = arc4random_uniform(6) + 1
        diceImage1.image = UIImage(named: "dice" + "\(randomNumber1)" )
        diceImage2.image = UIImage(named: "dice" + "\(randomNumber2)" )
    }

}

