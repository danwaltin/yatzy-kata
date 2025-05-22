//
//  Threes.swift
//  Yatzy
//
//  Created by Dan Waltin on 2025-05-19.
//


import Testing
@testable import Yatzy

@Test(arguments: [
    // d1 d2 d3 d4 d5  expectedScore
    // -----------------------------
    (   6, 1, 1, 4, 5,  0),

    (   3, 1, 1, 4, 5,  3),
    (   6, 3, 5, 4, 1,  3),
    (   6, 5, 3, 1, 1,  3),
    (   6, 5, 4, 3, 1,  3),
    (   6, 5, 4, 1, 3,  3),
    
    (   3, 3, 1, 1, 1,  6),
    (   3, 1, 3, 1, 1,  6),
    (   3, 4, 4, 3, 4,  6),
    (   3, 5, 5, 5, 3,  6),
    (   1, 3, 3, 1, 1,  6),
    (   1, 3, 1, 3, 4,  6),
    (   4, 3, 4, 4, 3,  6),
    (   5, 5, 3, 3, 5,  6),
    (   6, 6, 3, 6, 3,  6),
    (   1, 1, 1, 3, 3,  6),
    
    (   3, 3, 3, 5, 6,  9),
    (   3, 1, 3, 1, 3,  9),
    (   3, 4, 6, 3, 3,  9),
    
    (   3, 3, 3, 6, 3, 12),
    (   3, 1, 3, 3, 3, 12),
    (   5, 3, 3, 3, 3, 12),
    
    (   3, 3, 3, 3, 3, 15),
])
func threes(d1: Int, d2: Int, d3: Int, d4: Int, d5: Int, expectedScore: Int) {
    assert(score: expectedScore,
           for: .threes,
           whenRollingD1: d1, d2: d2, d3: d3, d4: d4, d5: d5)
}


