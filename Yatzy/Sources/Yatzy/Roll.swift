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
            return number(1)
        case .twos:
            return number(2)
        case .threes:
            return number(3)
        case .fours:
            return number(4)
        case .fives:
            return number(5)
        case .sixes:
            return number(6)

        case .pair:
            if number(6) >= 12 { return 12 }
            if number(5) >= 10 { return 10 }
            if number(4) >= 8 { return 8 }
            if number(3) >= 6 { return 6 }
            if number(2) >= 4 { return 4 }
            if number(1) >= 2 { return 2 }
            
            return 0

        case .twoPairs:
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
    
    private func number(_ num: Int) -> Int {
        return (num == d1 ? num : 0) +
        (num == d2 ? num : 0) +
        (num == d3 ? num : 0) +
        (num == d4 ? num : 0) +
        (num == d5 ? num : 0)
    }
}
