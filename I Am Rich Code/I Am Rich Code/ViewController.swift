//
//  ViewController.swift
//  I Am Rich Code
//
//  Created by Tejas Anil Shah on 13/09/17.
//  Copyright © 2017 Tejas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(hex: 0x34495E, alpha: 1)
        setUpUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setUpUI() -> Void {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "diamond"))
        imageView.contentMode = .scaleAspectFit
        self.view.addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.widthAnchor.constraint(equalToConstant: 270).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 270).isActive = true
        imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        let label = UILabel()
        label.text = "I Am Rich"
        let helveticaFont = UIFont.fontNames(forFamilyName: "Helvetica Neue")[7]
        label.font = UIFont(name: helveticaFont, size: 40.0)
        label.textColor = .white
        label.sizeToFit()
        self.view.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label.bottomAnchor.constraint(equalTo: imageView.topAnchor, constant: -8).isActive = true
    }
}


//MARK: Extentions
extension UIColor {
    
    convenience init(hex: Int, alpha: Double) {
        let components = (
            R: CGFloat((hex >> 16) & 0xff) / 255,
            G: CGFloat((hex >> 08) & 0xff) / 255,
            B: CGFloat((hex >> 00) & 0xff) / 255
        )
        self.init(red: components.R, green: components.G, blue: components.B, alpha: CGFloat(alpha))
    }
    
}
