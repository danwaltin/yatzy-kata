//
//  ThreeOfAKind.swift
//  Yatzy
//
//  Created by Dan Waltin on 2025-05-22.
//


import Testing
@testable import Yatzy

@Test(arguments: [
    // d1 d2 d3 d4 d5  expectedScore
    // -----------------------------
    (   6, 2, 3, 4, 5,  0),
    (   1, 2, 6, 4, 5,  0),
    (   1, 1, 6, 4, 5,  0),
    (   1, 2, 2, 4, 5,  0),
    (   1, 2, 3, 3, 5,  0),
    (   1, 2, 3, 4, 4,  0),
    (   5, 2, 3, 5, 4,  0),
    (   5, 6, 3, 6, 4,  0),
])
func three_of_a_kind_when_not_three_of_a_kind(d1: Int, d2: Int, d3: Int, d4: Int, d5: Int, expectedScore: Int) async throws {
    let roll = Roll(d1: d1, d2: d2, d3: d3, d4: d4, d5: d5)
    
    #expect(roll.score(.threeOfAKind) == expectedScore)
}

@Test(arguments: [
    // d1 d2 d3 d4 d5  expectedScore
    // -----------------------------
    (   1, 1, 1, 4, 5,  3),
    (   1, 2, 1, 4, 1,  3),
    (   6, 1, 5, 1, 1,  3),
    
    (   6, 2, 2, 2, 4,  6),
    
    (   3, 3, 1, 3, 4,  9),
    
    (   4, 2, 3, 4, 4, 12),

    (   5, 2, 5, 5, 4, 15),
    
    (   5, 6, 6, 3, 6, 18),
])
func three_of_a_kind_three_dice_matches(d1: Int, d2: Int, d3: Int, d4: Int, d5: Int, expectedScore: Int) async throws {
    let roll = Roll(d1: d1, d2: d2, d3: d3, d4: d4, d5: d5)
    
    #expect(roll.score(.threeOfAKind) == expectedScore)
}

@Test(arguments: [
    // d1 d2 d3 d4 d5  expectedScore
    // -----------------------------
    (   1, 1, 1, 1, 2,  3),
    (   2, 2, 2, 2, 3,  6),
    (   3, 3, 3, 3, 4,  9),
    (   4, 4, 4, 4, 5, 12),
    (   5, 5, 5, 5, 6, 15),
    (   6, 6, 6, 6, 1, 18),
])
func three_of_a_kind_four_dice_matches(d1: Int, d2: Int, d3: Int, d4: Int, d5: Int, expectedScore: Int) async throws {
    let roll = Roll(d1: d1, d2: d2, d3: d3, d4: d4, d5: d5)
    
    #expect(roll.score(.threeOfAKind) == expectedScore)
}
