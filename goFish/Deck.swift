//
//  Deck.swift
//  goFish
//
//  Created by Jenna Van Conett on 2/21/17.
//  Copyright © 2017 Jenna Van Conett. All rights reserved.
//

import Foundation

struct Deck {
    
    var cards: [Card] = {
        var cards = [Card]()
        
        Suit.AllValues.forEach { suit in
            Rank.AllValues.forEach { rank in
                let card = Card(suit: suit, rank: rank)
                cards.append(card)
            }
        }
        
        return cards
    }()
    
    mutating func shuffle() {
        for (index, card) in cards.enumerated() {
            let randomIndex = Int(arc4random_uniform(UInt32(cards.count)))
            self.cards[index] = cards[randomIndex]
            self.cards[randomIndex] = card
        }
    }
    
    mutating func draw() -> Card? {
        return cards.popLast()
    }
}
