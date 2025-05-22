//
//  FourOfAKind.swift
//  Yatzy
//
//  Created by Dan Waltin on 2025-05-22.
//


import Testing
@testable import Yatzy

@Suite struct FourOfAKind {
    @Test(arguments: [
        // d1 d2 d3 d4 d5  expectedScore
        // -----------------------------
        (   6, 2, 3, 4, 5,  0),
        (   1, 2, 6, 4, 5,  0),
    ])
    func all_five_dice_different_return_0(d1: Int, d2: Int, d3: Int, d4: Int, d5: Int, expectedScore: Int) {
        assert(score: expectedScore,
               for: .fourOfAKind,
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
    func two_equal_dice_return_0(d1: Int, d2: Int, d3: Int, d4: Int, d5: Int, expectedScore: Int) {
        assert(score: expectedScore,
               for: .fourOfAKind,
               whenRollingD1: d1, d2: d2, d3: d3, d4: d4, d5: d5)
    }
    
    @Test(arguments: [
        // d1 d2 d3 d4 d5  expectedScore
        // -----------------------------
        (   1, 1, 1, 4, 5,  0),
        (   6, 2, 2, 2, 4,  0),
        (   3, 3, 1, 3, 4,  0),
        (   4, 2, 3, 4, 4,  0),
        (   5, 2, 5, 5, 4,  0),
        (   5, 6, 6, 3, 6,  0),
    ])
    func three_equal_dice_return_0(d1: Int, d2: Int, d3: Int, d4: Int, d5: Int, expectedScore: Int) {
        assert(score: expectedScore,
               for: .fourOfAKind,
               whenRollingD1: d1, d2: d2, d3: d3, d4: d4, d5: d5)
    }
    
    @Test(arguments: [
        // d1 d2 d3 d4 d5  expectedScore
        // -----------------------------
        (   1, 1, 1, 1, 2,  4),
        (   2, 2, 2, 2, 3,  8),
        (   3, 3, 3, 3, 4, 12),
        (   4, 4, 4, 4, 5, 16),
        (   5, 5, 5, 5, 6, 20),
        (   6, 6, 6, 6, 1, 24),
    ])
    func four_dice_matches(d1: Int, d2: Int, d3: Int, d4: Int, d5: Int, expectedScore: Int) {
        assert(score: expectedScore,
               for: .fourOfAKind,
               whenRollingD1: d1, d2: d2, d3: d3, d4: d4, d5: d5)
    }

    @Test(arguments: [
        // d1 d2 d3 d4 d5  expectedScore
        // -----------------------------
        (   1, 1, 1, 1, 1,  4),
        (   2, 2, 2, 2, 2,  8),
        (   3, 3, 3, 3, 3, 12),
        (   4, 4, 4, 4, 4, 16),
        (   5, 5, 5, 5, 5, 20),
        (   6, 6, 6, 6, 6, 24),
    ])
    func five_dice_matches(d1: Int, d2: Int, d3: Int, d4: Int, d5: Int, expectedScore: Int) {
        assert(score: expectedScore,
               for: .fourOfAKind,
               whenRollingD1: d1, d2: d2, d3: d3, d4: d4, d5: d5)
    }
}
