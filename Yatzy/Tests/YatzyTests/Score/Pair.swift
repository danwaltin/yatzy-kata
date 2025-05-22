//
//  Pair.swift
//  Yatzy
//
//  Created by Dan Waltin on 2025-05-21.
//


import Testing
@testable import Yatzy

@Suite struct Pair {
    @Test(arguments: [
        // d1 d2 d3 d4 d5  expectedScore
        // -----------------------------
        (   6, 2, 3, 4, 5,  0),
        (   1, 2, 6, 4, 5,  0),
    ])
    func no_pair(d1: Int, d2: Int, d3: Int, d4: Int, d5: Int, expectedScore: Int) {
        assert(score: expectedScore,
               for: .pair,
               whenRollingD1: d1, d2: d2, d3: d3, d4: d4, d5: d5)
    }
    
    @Test(arguments: [
        // d1 d2 d3 d4 d5  expectedScore
        // -----------------------------
        (   1, 1, 3, 4, 5,  2),
        (   1, 2, 5, 4, 1,  2),
        (   6, 1, 5, 1, 4,  2),
        
        (   6, 2, 5, 2, 4,  4),
        
        (   3, 2, 1, 3, 4,  6),
        
        (   5, 2, 3, 4, 4,  8),
        
        (   5, 2, 1, 5, 4, 10),
        
        (   5, 2, 6, 3, 6, 12),
    ])
    func two_dice_matches(d1: Int, d2: Int, d3: Int, d4: Int, d5: Int, expectedScore: Int) {
        assert(score: expectedScore,
               for: .pair,
               whenRollingD1: d1, d2: d2, d3: d3, d4: d4, d5: d5)
    }
    
    @Test(arguments: [
        // d1 d2 d3 d4 d5  expectedScore
        // -----------------------------
        (   1, 1, 1, 1, 1,  2),
        (   2, 1, 1, 2, 2,  4),
        (   3, 2, 3, 2, 3,  6),
        (   4, 2, 4, 2, 4,  8),
        (   5, 2, 5, 2, 5, 10),
        (   6, 1, 6, 2, 6, 12),
    ])
    func sum_of_two_highest_matching(d1: Int, d2: Int, d3: Int, d4: Int, d5: Int, expectedScore: Int) {
        assert(score: expectedScore,
               for: .pair,
               whenRollingD1: d1, d2: d2, d3: d3, d4: d4, d5: d5)
    }
}
