//
//  GoFish.swift
//  goFish
//
//  Created by Jenna Van Conett on 2/21/17.
//  Copyright © 2017 Jenna Van Conett. All rights reserved.
//

import Foundation

class GoFish {
    
    var players: [Player]
    var deck: Deck
    
    convenience init(numberOfPlayers: Int) {
        var players = [Player]()
        for _ in 0..<numberOfPlayers {
            players.append(Player())
        }
        self.init(players: players)
    }
    
    init(players: [Player], deck: Deck = Deck()) {
        self.players = players
        self.deck = deck
    }
    
    func goFish() -> Card? {
        guard !deck.cards.isEmpty else { return nil }
        return deck.draw()
    }
}
