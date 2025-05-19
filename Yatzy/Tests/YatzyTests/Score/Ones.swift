//
//  Ones.swift
//  Yatzy
//
//  Created by Dan Waltin on 2025-05-19.
//


import Testing
@testable import Yatzy

@Test(arguments: [
    // d1 d2 d3 d4 d5  expectedScore
    // -----------------------------
    (   1, 2, 3, 4, 5,  1),
    (   6, 1, 5, 4, 3,  1),
    (   6, 5, 1, 3, 2,  1),
    (   6, 5, 4, 1, 2,  1),
    (   6, 5, 4, 3, 1,  1),
    
    (   1, 1, 2, 2, 2,  2),
    (   1, 3, 1, 3, 3,  2),
    (   1, 4, 4, 1, 4,  2),
    (   1, 5, 5, 5, 1,  2),
    (   2, 1, 1, 2, 2,  2),
    (   3, 1, 3, 1, 4,  2),
    (   4, 1, 4, 4, 1,  2),
    (   5, 5, 1, 1, 5,  2),
    (   2, 2, 1, 2, 1,  2),
    (   3, 3, 3, 1, 1,  2),

    (   1, 1, 1, 2, 2,  3),
    (   1, 3, 1, 3, 1,  3),
    (   1, 4, 6, 1, 1,  3),

    (   1, 1, 1, 2, 1,  4),
    (   1, 3, 1, 1, 1,  4),
    (   5, 1, 1, 1, 1,  4),

    (   1, 1, 1, 1, 1,  5),
])
func ones(d1: Int, d2: Int, d3: Int, d4: Int, d5: Int, expectedScore: Int) async throws {
    let roll = Roll(d1: d1, d2: d2, d3: d3, d4: d4, d5: d5)
    
    #expect(roll.score(.ones) == expectedScore)
}