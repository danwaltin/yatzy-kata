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
            case .chance:
                return d1 + d2 + d3 + d4 + d5
        case .ones:
            return number(1)
        case .twos:
            return number(2)
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
