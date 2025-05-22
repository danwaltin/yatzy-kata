//
//  SmallStraight.swift
//  Yatzy
//
//  Created by Dan Waltin on 2025-05-22.
//


import Testing
@testable import Yatzy

@Suite struct SmallStraight {
    @Test(arguments: [
        // d1 d2 d3 d4 d5  expectedScore
        // -----------------------------
        (   1, 2, 3, 4, 5, 15),
        (   5, 4, 3, 2, 1, 15),
        (   1, 3, 5, 4, 2, 15),
    ])
    func small_straight(d1: Int, d2: Int, d3: Int, d4: Int, d5: Int, expectedScore: Int) {
        assert(score: expectedScore,
               for: .smallStraight,
               whenRollingD1: d1, d2: d2, d3: d3, d4: d4, d5: d5)
    }
    
    @Test(arguments: [
        // d1 d2 d3 d4 d5  expectedScore
        // -----------------------------
        (   2, 3, 4, 5, 6,  0),
    ])
    func large_straight_return_0(d1: Int, d2: Int, d3: Int, d4: Int, d5: Int, expectedScore: Int) {
        assert(score: expectedScore,
               for: .smallStraight,
               whenRollingD1: d1, d2: d2, d3: d3, d4: d4, d5: d5)
    }
    
    @Test(arguments: [
        // d1 d2 d3 d4 d5  expectedScore
        // -----------------------------
        (   1, 1, 3, 4, 5,  0),
        (   1, 2, 2, 4, 5,  0),
        (   1, 2, 3, 3, 5,  0),
        (   1, 2, 3, 4, 4,  0),
        (   5, 2, 3, 4, 5,  0),
        (   1, 2, 3, 4, 6,  0),
    ])
    func not_small_straight_return_0(d1: Int, d2: Int, d3: Int, d4: Int, d5: Int, expectedScore: Int) {
        assert(score: expectedScore,
               for: .smallStraight,
               whenRollingD1: d1, d2: d2, d3: d3, d4: d4, d5: d5)
    }
}
