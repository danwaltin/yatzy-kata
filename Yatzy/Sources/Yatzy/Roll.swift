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
        case .ones:   return numOnes   * 1

        case .twos:   return numTwos   * 2

        case .threes: return numThrees * 3

        case .fours:  return numFours  * 4

        case .fives:  return numFives  * 5

        case .sixes:  return numSixes  * 6

        case .pair:
            if numSixes  >= 2 { return 12 }
            if numFives  >= 2 { return 10 }
            if numFours  >= 2 { return  8 }
            if numThrees >= 2 { return  6 }
            if numTwos   >= 2 { return  4 }
            if numOnes   >= 2 { return  2 }
            
            return 0

        case .twoPairs:
            var pairs = [Int]()
            
            if numSixes  >= 2 { pairs.append(12) }
            if numFives  >= 2 { pairs.append(10) }
            if numFours  >= 2 { pairs.append( 8) }
            if numThrees >= 2 { pairs.append( 6) }
            if numTwos   >= 2 { pairs.append( 4) }
            if numOnes   >= 2 { pairs.append( 2) }

            if pairs.count == 2 {
                return pairs[0] + pairs[1]
            }

            return 0

        case .threeOfAKind:
            if numSixes  >= 3 { return 18 }
            if numFives  >= 3 { return 15 }
            if numFours  >= 3 { return 12 }
            if numThrees >= 3 { return  9 }
            if numTwos   >= 3 { return  6 }
            if numOnes   >= 3 { return  3 }
            
            return 0

        case .fourOfAKind:
            if numSixes  >= 4 { return 24 }
            if numFives  >= 4 { return 20 }
            if numFours  >= 4 { return 16 }
            if numThrees >= 4 { return 12 }
            if numTwos   >= 4 { return  8 }
            if numOnes   >= 4 { return  4 }
            
            return 0

        case .smallStraight:
            if numOnes   == 1,
               numTwos   == 1,
               numThrees == 1,
               numFours  == 1,
               numFives  == 1 { return 15 }

            return 0

        case .largeStraight:
            if numTwos   == 1,
               numThrees == 1,
               numFours  == 1,
               numFives  == 1,
               numSixes  == 1 { return 20 }

            return 0

        case .fullHouse:
            var twoEqual = 0
            var threeEqual = 0
            
            if numSixes  == 2 { twoEqual = 12 }
            if numFives  == 2 { twoEqual = 10 }
            if numFours  == 2 { twoEqual =  8 }
            if numThrees == 2 { twoEqual =  6 }
            if numTwos   == 2 { twoEqual =  4 }
            if numOnes   == 2 { twoEqual =  2 }

            if numSixes  == 3 { threeEqual = 18 }
            if numFives  == 3 { threeEqual = 15 }
            if numFours  == 3 { threeEqual = 12 }
            if numThrees == 3 { threeEqual =  9 }
            if numTwos   == 3 { threeEqual =  6 }
            if numOnes   == 3 { threeEqual =  3 }

            if twoEqual > 0 && threeEqual > 0 {
                return twoEqual + threeEqual
            }

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
    
    private var numOnes:   Int { count(showingSide: 1)}
    private var numTwos:   Int { count(showingSide: 2)}
    private var numThrees: Int { count(showingSide: 3)}
    private var numFours:  Int { count(showingSide: 4)}
    private var numFives:  Int { count(showingSide: 5)}
    private var numSixes:  Int { count(showingSide: 6)}

    private func count(showingSide num: Int) -> Int {
        return (num == d1 ? 1 : 0) +
        (num == d2 ? 1 : 0) +
        (num == d3 ? 1 : 0) +
        (num == d4 ? 1 : 0) +
        (num == d5 ? 1 : 0)
    }
}
