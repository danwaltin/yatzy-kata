//
//  FullHouse.swift
//  Yatzy
//
//  Created by Dan Waltin on 2025-05-22.
//


import Testing
@testable import Yatzy

@Suite struct FullHouse {
    @Test(arguments: [
        // d1 d2 d3 d4 d5  expectedScore
        // -----------------------------
        (   1, 2, 1, 2, 1,  7),
        (   1, 1, 2, 2, 2,  8),

        (   3, 1, 3, 1, 1,  9),
        (   1, 3, 3, 3, 1, 11),

        (   4, 4, 1, 1, 1, 11),
        (   1, 4, 4, 4, 1, 14),

        (   1, 1, 1, 5, 5, 13),
        (   5, 5, 5, 1, 1, 17),

        (   6, 6, 1, 1, 1, 15),
        (   1, 1, 6, 6, 6, 20),
    ])
    func ones_as_lowest(d1: Int, d2: Int, d3: Int, d4: Int, d5: Int, expectedScore: Int) {
        assert(score: expectedScore,
               for: .fullHouse,
               whenRollingD1: d1, d2: d2, d3: d3, d4: d4, d5: d5)
    }

    @Test(arguments: [
        // d1 d2 d3 d4 d5  expectedScore
        // -----------------------------
        (   3, 2, 3, 2, 2, 12),
        (   2, 3, 3, 3, 2, 13),

        (   4, 4, 2, 2, 2, 14),
        (   2, 4, 4, 4, 2, 16),

        (   2, 2, 2, 5, 5, 16),
        (   5, 5, 5, 2, 2, 19),

        (   6, 6, 2, 2, 2, 18),
        (   2, 2, 6, 6, 6, 22),
    ])
    func twos_as_lowest(d1: Int, d2: Int, d3: Int, d4: Int, d5: Int, expectedScore: Int) {
        assert(score: expectedScore,
               for: .fullHouse,
               whenRollingD1: d1, d2: d2, d3: d3, d4: d4, d5: d5)
    }

    @Test(arguments: [
        // d1 d2 d3 d4 d5  expectedScore
        // -----------------------------
        (   4, 4, 3, 3, 3, 17),
        (   3, 4, 4, 4, 3, 18),

        (   3, 3, 3, 5, 5, 19),
        (   5, 5, 5, 3, 3, 21),

        (   6, 6, 3, 3, 3, 21),
        (   3, 3, 6, 6, 6, 24),
    ])
    func threes_as_lowest(d1: Int, d2: Int, d3: Int, d4: Int, d5: Int, expectedScore: Int) {
        assert(score: expectedScore,
               for: .fullHouse,
               whenRollingD1: d1, d2: d2, d3: d3, d4: d4, d5: d5)
    }

    @Test(arguments: [
        // d1 d2 d3 d4 d5  expectedScore
        // -----------------------------
        (   4, 4, 4, 5, 5, 22),
        (   5, 5, 5, 4, 4, 23),

        (   6, 6, 4, 4, 4, 24),
        (   4, 4, 6, 6, 6, 26),
    ])
    func fours_as_lowest(d1: Int, d2: Int, d3: Int, d4: Int, d5: Int, expectedScore: Int) {
        assert(score: expectedScore,
               for: .fullHouse,
               whenRollingD1: d1, d2: d2, d3: d3, d4: d4, d5: d5)
    }

    @Test(arguments: [
        // d1 d2 d3 d4 d5  expectedScore
        // -----------------------------
        (   6, 5, 5, 5, 6, 27),
        (   5, 6, 6, 5, 6, 28),
    ])
    func fives_as_lowest(d1: Int, d2: Int, d3: Int, d4: Int, d5: Int, expectedScore: Int) {
        assert(score: expectedScore,
               for: .fullHouse,
               whenRollingD1: d1, d2: d2, d3: d3, d4: d4, d5: d5)
    }
}
