//
//  ViewController.swift
//  goFish
//
//  Created by Jenna Van Conett on 2/21/17.
//  Copyright © 2017 Jenna Van Conett. All rights reserved.
//

import UIKit
import Spring

class HomeViewController: UIViewController {
    @IBOutlet weak var titleLabel: SpringLabel!
    @IBOutlet weak var playButton: SpringButton!
    @IBOutlet weak var fishImageView: SpringImageView!
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        titleLabel.animation = "squeezeDown"
        titleLabel.curve = "easeInOut"
        titleLabel.duration = 1.0
        titleLabel.animate()
        
        fishImageView.animation = "slideLeft"
        fishImageView.curve = "easeIn"
        fishImageView.duration = 2.5
        fishImageView.repeatCount = 100
        fishImageView.animate()
    }

}

