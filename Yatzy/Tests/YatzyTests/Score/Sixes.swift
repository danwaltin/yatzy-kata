//
//  Sixes.swift
//  Yatzy
//
//  Created by Dan Waltin on 2025-05-19.
//


import Testing
@testable import Yatzy

@Test(arguments: [
    // d1 d2 d3 d4 d5  expectedScore
    // -----------------------------
    (   1, 2, 3, 4, 5,  0),

    (   6, 2, 3, 4, 5,  6),
    (   2, 6, 5, 4, 3,  6),
    (   2, 5, 6, 3, 2,  6),
    (   2, 5, 4, 6, 2,  6),
    (   2, 5, 4, 3, 6,  6),
    
    (   6, 6, 2, 2, 2, 12),
    (   6, 3, 6, 3, 3, 12),
    (   6, 4, 4, 6, 4, 12),
    (   6, 5, 5, 5, 6, 12),
    (   2, 6, 6, 2, 2, 12),
    (   3, 6, 3, 6, 4, 12),
    (   4, 6, 4, 4, 6, 12),
    (   5, 5, 6, 6, 5, 12),
    (   2, 2, 6, 2, 6, 12),
    (   3, 3, 3, 6, 6, 12),

    (   6, 6, 6, 2, 2, 18),
    (   6, 3, 6, 3, 6, 18),
    (   6, 4, 5, 6, 6, 18),

    (   6, 6, 6, 2, 6, 24),
    (   6, 3, 6, 6, 6, 24),
    (   5, 6, 6, 6, 6, 24),

    (   6, 6, 6, 6, 6, 30),
])
func sixes(d1: Int, d2: Int, d3: Int, d4: Int, d5: Int, expectedScore: Int) {
    assert(score: expectedScore,
           for: .sixes,
           whenRollingD1: d1, d2: d2, d3: d3, d4: d4, d5: d5)
}
