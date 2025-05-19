import Testing
@testable import Yatzy

@Suite struct YatzyScoreTests {
    @Test(arguments: [
        // d1 d2 d3 d4 d5  expectedScore
        // -----------------------------
        (   1, 1, 1, 1, 1,  5),
        (   1, 2, 3, 4, 5, 15),
        (   6, 5, 4, 3, 2, 20),
    ])
    func chance(d1: Int, d2: Int, d3: Int, d4: Int, d5: Int, expectedScore: Int) async throws {
        let roll = Roll(d1: d1, d2: d2, d3: d3, d4: d4, d5: d5)
        
        #expect(roll.score(.chance) == expectedScore)
    }

    @Test(arguments: [
        // d1 d2 d3 d4 d5  expectedScore
        // -----------------------------
        (   1, 1, 1, 1, 1,  5),

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
    ])
    func ones(d1: Int, d2: Int, d3: Int, d4: Int, d5: Int, expectedScore: Int) async throws {
        let roll = Roll(d1: d1, d2: d2, d3: d3, d4: d4, d5: d5)
        
        #expect(roll.score(.ones) == expectedScore)
    }
}
