//
//  Fives.swift
//  Yatzy
//
//  Created by Dan Waltin on 2025-05-19.
//


import Testing
@testable import Yatzy

@Test(arguments: [
    // d1 d2 d3 d4 d5  expectedScore
    // -----------------------------
    (   6, 2, 3, 4, 1,  0),

    (   5, 2, 3, 4, 2,  5),
    (   6, 5, 2, 4, 3,  5),
    (   6, 2, 5, 3, 2,  5),
    (   6, 1, 4, 5, 2,  5),
    (   6, 1, 4, 3, 5,  5),
    
    (   5, 5, 2, 2, 2, 10),
    (   5, 3, 5, 3, 3, 10),
    (   5, 4, 4, 5, 4, 10),
    (   5, 6, 6, 6, 5, 10),
    (   2, 5, 5, 2, 2, 10),
    (   3, 5, 3, 5, 4, 10),
    (   4, 5, 4, 4, 5, 10),
    (   2, 3, 5, 5, 4, 10),
    (   2, 2, 5, 2, 5, 10),
    (   3, 3, 3, 5, 5, 10),

    (   5, 5, 5, 2, 2, 15),
    (   5, 3, 5, 3, 5, 15),
    (   5, 4, 6, 5, 5, 15),

    (   5, 5, 2, 5, 5, 20),
    (   5, 3, 5, 5, 5, 20),
    (   5, 5, 5, 6, 5, 20),

    (   5, 5, 5, 5, 5, 25),
])
func fives(d1: Int, d2: Int, d3: Int, d4: Int, d5: Int, expectedScore: Int) {
    assert(score: expectedScore,
           for: .fives,
           whenRollingD1: d1, d2: d2, d3: d3, d4: d4, d5: d5)
}
