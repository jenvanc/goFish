//
//  Player.swift
//  goFish
//
//  Created by Jenna Van Conett on 2/21/17.
//  Copyright © 2017 Jenna Van Conett. All rights reserved.
//

import Foundation

struct Player {
    
    var hand: [Card] = [Card]() {
        didSet {
            let pairs = hand.filter({ _ in
                hand.elementsEqual(self.hand, by: { (cardOne, cardTwo) -> Bool in
                    return cardOne.rank == cardTwo.rank
                })
            })
            self.score += pairs.count / 2
            pairs.forEach { self.hand.remove(object: $0) }
        }
    }

    var score: Int = 0
    
}

extension Array where Element: Equatable {
    mutating func remove(object: Element) {
        if let index = index(where: { $0 == object }) {
            remove(at: index)
        }
    }
}
