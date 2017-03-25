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
    @IBOutlet weak var fishImageView: UIImageView!
    @IBOutlet weak var fishImageViewLeadingConstraint: NSLayoutConstraint!
    let fishAnimationTime = 2.5

    override func viewDidLoad() {
        super.viewDidLoad()
        fishImageViewLeadingConstraint.constant = UIScreen.main.bounds.width
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        animateFishes()
    }

    func animateFishes() {
        view.layoutIfNeeded()
        UIView.animate(withDuration: fishAnimationTime,
                       delay: 0.0,
                       options: [.repeat, .curveEaseIn],
                       animations: {
                        self.fishImageViewLeadingConstraint.constant = self.fishImageView.bounds.width * -1
                        self.view.layoutIfNeeded()
            })
    }
}
