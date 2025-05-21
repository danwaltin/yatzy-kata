//
//  Pair.swift
//  Yatzy
//
//  Created by Dan Waltin on 2025-05-21.
//


import Testing
@testable import Yatzy

@Test(arguments: [
    // d1 d2 d3 d4 d5  expectedScore
    // -----------------------------
    (   6, 2, 3, 4, 5,  0),
    (   1, 2, 6, 4, 5,  0),
])
func pair_when_no_pair(d1: Int, d2: Int, d3: Int, d4: Int, d5: Int, expectedScore: Int) async throws {
    let roll = Roll(d1: d1, d2: d2, d3: d3, d4: d4, d5: d5)
    
    #expect(roll.score(.pair) == expectedScore)
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
func pair_two_dice_matches(d1: Int, d2: Int, d3: Int, d4: Int, d5: Int, expectedScore: Int) async throws {
    let roll = Roll(d1: d1, d2: d2, d3: d3, d4: d4, d5: d5)
    
    #expect(roll.score(.pair) == expectedScore)
}

@Test(arguments: [
    // d1 d2 d3 d4 d5  expectedScore
    // -----------------------------
    (   1, 1, 1, 1, 1,  2),
    (   1, 1, 2, 2, 3,  4),
    (   1, 6, 6, 2, 6, 12),
])
func pair_sum_of_two_highest_matching(d1: Int, d2: Int, d3: Int, d4: Int, d5: Int, expectedScore: Int) async throws {
    let roll = Roll(d1: d1, d2: d2, d3: d3, d4: d4, d5: d5)
    
    #expect(roll.score(.pair) == expectedScore)
}
