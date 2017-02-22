//
//  Card.swift
//  goFish
//
//  Created by Jenna Van Conett on 2/21/17.
//  Copyright © 2017 Jenna Van Conett. All rights reserved.
//

import Foundation

struct Card: Equatable {
    let suit: Suit
    let rank: Rank
}

func == (lhs: Card, rhs: Card) -> Bool {
    return lhs.rank == rhs.rank
}
