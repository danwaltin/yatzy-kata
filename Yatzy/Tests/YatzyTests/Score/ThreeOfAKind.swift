//
//  ThreeOfAKind.swift
//  Yatzy
//
//  Created by Dan Waltin on 2025-05-22.
//


import Testing
@testable import Yatzy

@Suite struct ThreeOfAKind {
    @Test(arguments: [
        // d1 d2 d3 d4 d5  expectedScore
        // -----------------------------
        (   6, 2, 3, 4, 5,  0),
        (   1, 2, 6, 4, 5,  0),
    ])
    func all_five_dice_different_return_zero(d1: Int, d2: Int, d3: Int, d4: Int, d5: Int, expectedScore: Int) {
        assert(score: expectedScore,
               for: .threeOfAKind,
               whenRollingD1: d1, d2: d2, d3: d3, d4: d4, d5: d5)
    }

    @Test(arguments: [
        // d1 d2 d3 d4 d5  expectedScore
        // -----------------------------
        (   1, 1, 6, 4, 5,  0),
        (   1, 2, 2, 4, 5,  0),
        (   1, 2, 3, 3, 5,  0),
        (   1, 2, 3, 4, 4,  0),
        (   5, 2, 3, 5, 4,  0),
        (   5, 6, 3, 6, 4,  0),
    ])
    func two_equal_dice_return_zero(d1: Int, d2: Int, d3: Int, d4: Int, d5: Int, expectedScore: Int) {
        assert(score: expectedScore,
               for: .threeOfAKind,
               whenRollingD1: d1, d2: d2, d3: d3, d4: d4, d5: d5)
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
    func three_dice_matches(d1: Int, d2: Int, d3: Int, d4: Int, d5: Int, expectedScore: Int) {
        assert(score: expectedScore,
               for: .threeOfAKind,
               whenRollingD1: d1, d2: d2, d3: d3, d4: d4, d5: d5)
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
    func four_dice_matches(d1: Int, d2: Int, d3: Int, d4: Int, d5: Int, expectedScore: Int) {
        assert(score: expectedScore,
               for: .threeOfAKind,
               whenRollingD1: d1, d2: d2, d3: d3, d4: d4, d5: d5)
    }

    @Test(arguments: [
        // d1 d2 d3 d4 d5  expectedScore
        // -----------------------------
        (   1, 1, 1, 1, 1,  3),
        (   2, 2, 2, 2, 2,  6),
        (   3, 3, 3, 3, 3,  9),
        (   4, 4, 4, 4, 4, 12),
        (   5, 5, 5, 5, 5, 15),
        (   6, 6, 6, 6, 6, 18),
    ])
    func five_dice_matches(d1: Int, d2: Int, d3: Int, d4: Int, d5: Int, expectedScore: Int) {
        assert(score: expectedScore,
               for: .threeOfAKind,
               whenRollingD1: d1, d2: d2, d3: d3, d4: d4, d5: d5)
    }
}
