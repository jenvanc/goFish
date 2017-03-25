//
//  Suit.swift
//  goFish
//
//  Created by Jenna Van Conett on 2/21/17.
//  Copyright © 2017 Jenna Van Conett. All rights reserved.
//

import Foundation

enum Suit: CustomStringConvertible {
    case Heart, Diamond, Club, Spade
    
    var description: String {
        switch self {
        case .Heart:
            return "❤️"
        case .Diamond:
            return "♦️"
        case .Spade:
            return "♠️"
        case .Club:
            return "♣️"
        }
    }
    
    static let AllValues: [Suit] = [
        .Heart,
        .Diamond,
        .Club,
        .Spade
    ]
}
