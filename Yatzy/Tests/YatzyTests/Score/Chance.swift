//
//  Chance.swift
//  Yatzy
//
//  Created by Dan Waltin on 2025-05-19.
//


import Testing
@testable import Yatzy

@Suite struct Chance {
    @Test(arguments: [
        // d1 d2 d3 d4 d5  expectedScore
        // -----------------------------
        (   1, 1, 1, 1, 1,  5),
        (   1, 2, 3, 4, 5, 15),
        (   6, 5, 4, 3, 2, 20),
    ])
    func return_sum_of_dice(d1: Int, d2: Int, d3: Int, d4: Int, d5: Int, expectedScore: Int) {
        assert(score: expectedScore,
               for: .chance,
               whenRollingD1: d1, d2: d2, d3: d3, d4: d4, d5: d5)
    }
}
