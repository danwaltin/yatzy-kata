//
//  Twos.swift
//  Yatzy
//
//  Created by Dan Waltin on 2025-05-19.
//


import Testing
@testable import Yatzy

@Suite struct Twos {
    @Test(arguments: [
        // d1 d2 d3 d4 d5  expectedScore
        // -----------------------------
        (   6, 1, 3, 4, 5,  0),
    ])
    func zero_twos(d1: Int, d2: Int, d3: Int, d4: Int, d5: Int, expectedScore: Int) {
        assert(score: expectedScore,
               for: .twos,
               whenRollingD1: d1, d2: d2, d3: d3, d4: d4, d5: d5)
    }

    @Test(arguments: [
        // d1 d2 d3 d4 d5  expectedScore
        // -----------------------------
        (   2, 1, 3, 4, 5,  2),
        (   6, 2, 5, 4, 3,  2),
        (   6, 5, 2, 3, 1,  2),
        (   6, 5, 4, 2, 1,  2),
        (   6, 5, 4, 3, 2,  2),
    ])
    func one_two(d1: Int, d2: Int, d3: Int, d4: Int, d5: Int, expectedScore: Int) {
        assert(score: expectedScore,
               for: .twos,
               whenRollingD1: d1, d2: d2, d3: d3, d4: d4, d5: d5)
    }

    @Test(arguments: [
        // d1 d2 d3 d4 d5  expectedScore
        // -----------------------------
        (   2, 2, 1, 1, 1,  4),
        (   2, 3, 2, 3, 3,  4),
        (   2, 4, 4, 2, 4,  4),
        (   2, 5, 5, 5, 2,  4),
        (   1, 2, 2, 1, 1,  4),
        (   3, 2, 3, 2, 4,  4),
        (   4, 2, 4, 4, 2,  4),
        (   5, 5, 2, 2, 5,  4),
        (   6, 6, 2, 6, 2,  4),
        (   3, 3, 3, 2, 2,  4),
    ])
    func two_twos(d1: Int, d2: Int, d3: Int, d4: Int, d5: Int, expectedScore: Int) {
        assert(score: expectedScore,
               for: .twos,
               whenRollingD1: d1, d2: d2, d3: d3, d4: d4, d5: d5)
    }
    
    @Test(arguments: [
        // d1 d2 d3 d4 d5  expectedScore
        // -----------------------------
        (   2, 2, 2, 5, 6,  6),
        (   2, 3, 2, 3, 2,  6),
        (   2, 4, 6, 2, 2,  6),
    ])
    func three_twos(d1: Int, d2: Int, d3: Int, d4: Int, d5: Int, expectedScore: Int) {
        assert(score: expectedScore,
               for: .twos,
               whenRollingD1: d1, d2: d2, d3: d3, d4: d4, d5: d5)
    }
    
    @Test(arguments: [
        // d1 d2 d3 d4 d5  expectedScore
        // -----------------------------
        (   2, 2, 2, 6, 2,  8),
        (   2, 3, 2, 2, 2,  8),
        (   5, 2, 2, 2, 2,  8),
    ])
    func four_twos(d1: Int, d2: Int, d3: Int, d4: Int, d5: Int, expectedScore: Int) {
        assert(score: expectedScore,
               for: .twos,
               whenRollingD1: d1, d2: d2, d3: d3, d4: d4, d5: d5)
    }
    
    @Test(arguments: [
        // d1 d2 d3 d4 d5  expectedScore
        // -----------------------------
        (   2, 2, 2, 2, 2, 10),
    ])
    func five_twos(d1: Int, d2: Int, d3: Int, d4: Int, d5: Int, expectedScore: Int) {
        assert(score: expectedScore,
               for: .twos,
               whenRollingD1: d1, d2: d2, d3: d3, d4: d4, d5: d5)
    }
}
