//
//  Fours.swift
//  Yatzy
//
//  Created by Dan Waltin on 2025-05-19.
//


import Testing
@testable import Yatzy

@Test(arguments: [
    // d1 d2 d3 d4 d5  expectedScore
    // -----------------------------
    (   2, 1, 1, 1, 5,  0),

    (   4, 1, 1, 1, 5,  4),
    (   6, 4, 5, 1, 1,  4),
    (   6, 5, 4, 1, 1,  4),
    (   6, 5, 1, 4, 1,  4),
    (   6, 5, 1, 1, 4,  4),
    
    (   4, 4, 1, 1, 1,  8),
    (   4, 1, 4, 1, 1,  8),
    (   4, 1, 1, 4, 1,  8),
    (   4, 5, 5, 5, 4,  8),
    (   1, 4, 4, 1, 1,  8),
    (   1, 4, 1, 4, 1,  8),
    (   1, 4, 1, 1, 4,  8),
    (   5, 5, 4, 4, 5,  8),
    (   6, 6, 4, 6, 4,  8),
    (   1, 1, 1, 4, 4,  8),
    
    (   4, 4, 4, 5, 6, 12),
    (   4, 1, 4, 1, 4, 12),
    (   4, 1, 6, 4, 4, 12),
    
    (   4, 4, 4, 6, 4, 16),
    (   4, 1, 4, 4, 4, 16),
    (   5, 4, 4, 4, 4, 16),
    
    (   4, 4, 4, 4, 4, 20),
])
func fours(d1: Int, d2: Int, d3: Int, d4: Int, d5: Int, expectedScore: Int) {
    assert(score: expectedScore,
           for: .fours,
           whenRollingD1: d1, d2: d2, d3: d3, d4: d4, d5: d5)
}
