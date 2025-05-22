//
//  TwoPairs.swift
//  Yatzy
//
//  Created by Dan Waltin on 2025-05-21.
//


import Testing
@testable import Yatzy

@Suite struct TwoPairs {
    @Test(arguments: [
        // d1 d2 d3 d4 d5  expectedScore
        // -----------------------------
        (   1, 1, 2, 2, 3,  6),
        (   3, 3, 4, 4, 1, 14),
        (   5, 5, 6, 6, 3, 22),
        
        (   6, 1, 6, 2, 1, 14),
        
        (   2, 4, 5, 4, 5, 18),
        (   6, 3, 3, 4, 6, 18),
        
        (   1, 6, 6, 5, 5, 22),
    ])
    func two_pairs(d1: Int, d2: Int, d3: Int, d4: Int, d5: Int, expectedScore: Int) {
        assert(score: expectedScore,
               for: .twoPairs,
               whenRollingD1: d1, d2: d2, d3: d3, d4: d4, d5: d5)
    }
    
    @Test(arguments: [
        // d1 d2 d3 d4 d5  expectedScore
        // -----------------------------
        (   1, 1, 1, 2, 2,  6),
        (   2, 3, 3, 2, 2, 10),
        (   3, 3, 4, 4, 3, 14),
        (   4, 4, 4, 5, 5, 18),
        (   5, 6, 5, 6, 5, 22),
        (   6, 5, 6, 6, 5, 22),
    ])
    func three_equal(d1: Int, d2: Int, d3: Int, d4: Int, d5: Int, expectedScore: Int) {
        assert(score: expectedScore,
               for: .twoPairs,
               whenRollingD1: d1, d2: d2, d3: d3, d4: d4, d5: d5)
    }
    
    @Test(arguments: [
        // d1 d2 d3 d4 d5  expectedScore
        // -----------------------------
        (   1, 1, 1, 1, 5,  0),
    ])
    func four_equal_gives_zero(d1: Int, d2: Int, d3: Int, d4: Int, d5: Int, expectedScore: Int) {
        assert(score: expectedScore,
               for: .twoPairs,
               whenRollingD1: d1, d2: d2, d3: d3, d4: d4, d5: d5)
    }
    
    @Test(arguments: [
        // d1 d2 d3 d4 d5  expectedScore
        // -----------------------------
        (   3, 3, 3, 3, 3,  0),
    ])
    func five_equal_gives_zero(d1: Int, d2: Int, d3: Int, d4: Int, d5: Int, expectedScore: Int) {
        assert(score: expectedScore,
               for: .twoPairs,
               whenRollingD1: d1, d2: d2, d3: d3, d4: d4, d5: d5)
    }
}
