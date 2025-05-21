//
//  TwoPairs.swift
//  Yatzy
//
//  Created by Dan Waltin on 2025-05-21.
//


import Testing
@testable import Yatzy

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
func two_pairs(d1: Int, d2: Int, d3: Int, d4: Int, d5: Int, expectedScore: Int) async throws {
    let roll = Roll(d1: d1, d2: d2, d3: d3, d4: d4, d5: d5)
    
    #expect(roll.score(.twoPairs) == expectedScore)
}

@Test(arguments: [
    // d1 d2 d3 d4 d5  expectedScore
    // -----------------------------
    (   1, 1, 2, 2, 2,  6),
    (   3, 3, 4, 4, 3, 14),
    (   6, 5, 6, 6, 5, 22),
])
func two_pairs_when_three_equal(d1: Int, d2: Int, d3: Int, d4: Int, d5: Int, expectedScore: Int) async throws {
    let roll = Roll(d1: d1, d2: d2, d3: d3, d4: d4, d5: d5)
    
    #expect(roll.score(.twoPairs) == expectedScore)
}

@Test(arguments: [
    // d1 d2 d3 d4 d5  expectedScore
    // -----------------------------
    (   1, 1, 1, 1, 5,  0),
])
func two_pairs_four_equal_gives_zero(d1: Int, d2: Int, d3: Int, d4: Int, d5: Int, expectedScore: Int) async throws {
    let roll = Roll(d1: d1, d2: d2, d3: d3, d4: d4, d5: d5)
    
    #expect(roll.score(.twoPairs) == expectedScore)
}

@Test(arguments: [
    // d1 d2 d3 d4 d5  expectedScore
    // -----------------------------
    (   3, 3, 3, 3, 3,  0),
])
func two_pairs_five_equal_gives_zero(d1: Int, d2: Int, d3: Int, d4: Int, d5: Int, expectedScore: Int) async throws {
    let roll = Roll(d1: d1, d2: d2, d3: d3, d4: d4, d5: d5)
    
    #expect(roll.score(.twoPairs) == expectedScore)
}
