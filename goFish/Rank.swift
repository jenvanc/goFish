//
//  Rank.swift
//  goFish
//
//  Created by Jenna Van Conett on 2/21/17.
//  Copyright © 2017 Jenna Van Conett. All rights reserved.
//

import Foundation

enum Rank: CustomStringConvertible {
    case One, Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten, Jack, Queen, King, Ace
    
    var description: String {
        switch self {
        case .One:
            return "1"
        case .Two:
            return "2"
        case .Three:
            return "3"
        case .Four:
            return "4"
        case .Five:
            return "5"
        case .Six:
            return "6"
        case .Seven:
            return "7"
        case .Eight:
            return "8"
        case .Nine:
            return "9"
        case .Ten:
            return "10"
        case .Jack:
            return "J"
        case .Queen:
            return "Q"
        case .King:
            return "K"
        case .Ace:
            return "A"
        }
    }
    
    static let AllValues: [Rank] = [
        .One,
        .Two,
        .Three,
        .Four,
        .Five,
        .Six,
        .Seven,
        .Eight,
        .Nine,
        .Ten,
        .Jack,
        .Queen,
        .King,
        .Ace
    ]
    
}
