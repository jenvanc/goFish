//
//  DeckSpec.swift
//  goFish
//
//  Created by Jenna Van Conett on 2/28/17.
//  Copyright © 2017 Jenna Van Conett. All rights reserved.
//

import Foundation
import Quick
import Nimble

@testable import goFish
class DeckSpec: QuickSpec {
    override func spec() {
        var deck: Deck!
        
        beforeEach {
            deck = Deck()
        }
        
        it("has 52 cards") {
            expect(deck.cards.count).to(equal(52))
        }
    }
}
