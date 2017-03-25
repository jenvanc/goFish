//
//  PlayerSpec.swift
//  goFish
//
//  Created by Jenna Van Conett on 2/28/17.
//  Copyright © 2017 Jenna Van Conett. All rights reserved.
//

import Foundation
import Quick
import Nimble

@testable import goFish
class PlayerSpec: QuickSpec {
    override func spec() {
        var player: Player!
        
        beforeEach {
            player = Player()
        }
        
        it("starts with a score of zero"){
            expect(player.score).to(equal(0))
        }
        
        context("when the user draws a card"){
            var card: Card!
            
            beforeEach {
                card = Card(suit: .Club, rank: .Ace)
                player.draw(card: card)
            }
            
            it("has the score imcrement when the cards match"){
                let anotherCard = Card(suit: .Heart, rank: .Ace)
                player.draw(card: anotherCard)
                expect(player.score).to(equal(1))
            }
            
            it("score does not increment when there is not a match"){
                let anotherCard = Card(suit: .Heart, rank: .Two)
                player.draw(card: anotherCard)
                expect(player.score).to(equal(0))
            }
        }
    }
}
