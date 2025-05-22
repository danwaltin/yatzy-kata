//
//  Roll.swift
//  Yatzy
//
//  Created by Dan Waltin on 2025-05-19.
//

struct Roll {
    let d1: Int
    let d2: Int
    let d3: Int
    let d4: Int
    let d5: Int
    
    func score(_ scoreType: ScoreType) -> Int {
        switch scoreType {
        case .ones:
            return count(showingSide: 1)
        case .twos:
            return count(showingSide: 2) * 2
        case .threes:
            return count(showingSide: 3) * 3
        case .fours:
            return count(showingSide: 4) * 4
        case .fives:
            return count(showingSide: 5) * 5
        case .sixes:
            return count(showingSide: 6) * 6

        case .pair:
            if count(showingSide: 6) >= 2 { return 12 }
            if count(showingSide: 5) >= 2 { return 10 }
            if count(showingSide: 4) >= 2 { return  8 }
            if count(showingSide: 3) >= 2 { return  6 }
            if count(showingSide: 2) >= 2 { return  4 }
            if count(showingSide: 1) >= 2 { return  2 }
            
            return 0

        case .twoPairs:
            var pairs = [Int]()
            
            if count(showingSide: 6) >= 2 { pairs.append(12) }
            if count(showingSide: 5) >= 2 { pairs.append(10) }
            if count(showingSide: 4) >= 2 { pairs.append( 8) }
            if count(showingSide: 3) >= 2 { pairs.append( 6) }
            if count(showingSide: 2) >= 2 { pairs.append( 4) }
            if count(showingSide: 1) >= 2 { pairs.append( 2) }

            if pairs.count == 2 {
                return pairs[0] + pairs[1]
            }
            return 0

        case .threeOfAKind:
            if count(showingSide: 6) >= 3 { return 18 }
            if count(showingSide: 5) >= 3 { return 15 }
            if count(showingSide: 4) >= 3 { return 12 }
            if count(showingSide: 3) >= 3 { return  9 }
            if count(showingSide: 2) >= 3 { return  6 }
            if count(showingSide: 1) >= 3 { return  3 }
            
            return 0

        case .fourOfAKind:
            if count(showingSide: 6) >= 4 { return 24 }
            if count(showingSide: 5) >= 4 { return 20 }
            if count(showingSide: 4) >= 4 { return 16 }
            if count(showingSide: 3) >= 4 { return 12 }
            if count(showingSide: 2) >= 4 { return  8 }
            if count(showingSide: 1) >= 4 { return  4 }
            
            return 0

        case .chance:
            return d1 + d2 + d3 + d4 + d5

        case .yatzy:
            if d1 == d2 && d2 == d3 && d3 == d4 && d4 == d5 {
                return 50
            }
            return 0
        }
    }
    
    private func count(showingSide num: Int) -> Int {
        return (num == d1 ? 1 : 0) +
        (num == d2 ? 1 : 0) +
        (num == d3 ? 1 : 0) +
        (num == d4 ? 1 : 0) +
        (num == d5 ? 1 : 0)
    }
}
