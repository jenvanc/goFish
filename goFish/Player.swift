//
//  Player.swift
//  goFish
//
//  Created by Jenna Van Conett on 2/21/17.
//  Copyright © 2017 Jenna Van Conett. All rights reserved.
//

import Foundation

struct Player {
    
    private var hand: [Card] = [Card]()

    var score: Int = 0
    
    mutating func draw(card: Card) {
       hand.append(card)
       guard hand.count > 1 else {
            return
       }
       updateScore()
    }
    
    func has(card: Card) -> Bool {
        return hand.contains(card)
    }
    
    private mutating func updateScore() {
        let pairs = hand.filter { (card) -> Bool in
            hand.contains { (pairing) -> Bool in
                card.suit != pairing.suit && card.rank == pairing.rank
            }
            
        }
        score += pairs.count / 2
        pairs.forEach { self.hand.remove(object: $0) }
        
    }
    
}

extension Array where Element: Equatable {
    mutating func remove(object: Element) {
        if let index = index(where: { $0 == object }) {
            remove(at: index)
        }
    }
}
