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
            return (d1 == 1 ? 1 : 0) + (d2 == 1 ? 1 : 0) + (d3 == 1 ? 1 : 0) + (d4 == 1 ? 1 : 0) + (d5 == 1 ? 1 : 0)
        case .twos:
            return (d1 == 2 ? 2 : 0) + (d2 == 2 ? 2 : 0) + (d3 == 2 ? 2 : 0) + (d4 == 2 ? 2 : 0) + (d5 == 2 ? 2 : 0)
        }
        
    }
}
