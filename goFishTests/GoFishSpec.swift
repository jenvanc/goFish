//
//  GoFishSpec.swift
//  goFish
//
//  Created by Jenna Van Conett on 2/28/17.
//  Copyright © 2017 Jenna Van Conett. All rights reserved.
//

import Foundation
import Quick
import Nimble

@testable import goFish

class GoFishSpec: QuickSpec {
    override func spec() {
        var goFish: GoFish!
        
        beforeEach {
            goFish = GoFish(numberOfPlayers: 2)
        }
        
        it("has the correct number of players"){
            expect(goFish.players.count).to(equal(2))
        }
        
        it("returns a card when fishing"){
            expect(goFish.goFish()).to(beAnInstanceOf(Card.self))
        }
    }
}
