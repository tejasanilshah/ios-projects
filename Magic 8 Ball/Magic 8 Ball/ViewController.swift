//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Tejas Anil Shah on 19/09/17.
//  Copyright © 2017 Tejas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var magicBallImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        randomImageForBall()
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        randomImageForBall()
    }
    
    func randomImageForBall() -> Void {
        magicBallImageView.image = UIImage(named: "ball\(arc4random_uniform(5) + 1)" )
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if(motion == .motionShake){
            randomImageForBall()
        }
    }

}

