//
//  ViewController.swift
//  goFish
//
//  Created by Jenna Van Conett on 2/21/17.
//  Copyright © 2017 Jenna Van Conett. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var playButton: UIButton!

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animate(withDuration: 0.5) {
            self.titleLabel.frame = CGRect(x: 0, y: 0, width: 300, height: 300)
        }
    }

}

