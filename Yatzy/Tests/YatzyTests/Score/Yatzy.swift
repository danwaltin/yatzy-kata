//
//  Yatzy.swift
//  Yatzy
//
//  Created by Dan Waltin on 2025-05-21.
//


import Testing
@testable import Yatzy

@Suite struct Yatzy {
    @Test(arguments: [
        // d1 d2 d3 d4 d5  expectedScore
        // -----------------------------
        (   1, 1, 1, 1, 1, 50),
        (   2, 2, 2, 2, 2, 50),
        (   3, 3, 3, 3, 3, 50),
        (   4, 4, 4, 4, 4, 50),
        (   5, 5, 5, 5, 5, 50),
        (   6, 6, 6, 6, 6, 50),
    ])
    func five_equal_return_50(d1: Int, d2: Int, d3: Int, d4: Int, d5: Int, expectedScore: Int) {
        assert(score: expectedScore,
               for: .yatzy,
               whenRollingD1: d1, d2: d2, d3: d3, d4: d4, d5: d5)
    }

    @Test(arguments: [
        // d1 d2 d3 d4 d5  expectedScore
        // -----------------------------
        (   6, 1, 1, 1, 1,  0),
        (   2, 5, 2, 2, 2,  0),
        (   3, 3, 4, 3, 3,  0),
        (   4, 4, 4, 3, 4,  0),
        (   5, 5, 5, 5, 2,  0),
        (   1, 6, 6, 6, 6,  0),
    ])
    func four_equal_return_0(d1: Int, d2: Int, d3: Int, d4: Int, d5: Int, expectedScore: Int) {
        assert(score: expectedScore,
               for: .yatzy,
               whenRollingD1: d1, d2: d2, d3: d3, d4: d4, d5: d5)
    }
}
