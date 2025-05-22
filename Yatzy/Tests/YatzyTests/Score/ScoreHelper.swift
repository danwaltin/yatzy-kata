//
//  ScoreHelper.swift
//  Yatzy
//
//  Created by Dan Waltin on 2025-05-22.
//

import Foundation
import Testing
@testable import Yatzy

func assert(score expectedScore: Int,
            for scoreType: ScoreType,
            whenRollingD1 d1: Int, d2: Int, d3: Int, d4: Int, d5: Int,
            fileID: String = #fileID,
            filePath: String = #filePath,
            line: Int = #line,
            column: Int = #column) {
    
    let roll = Roll(d1: d1, d2: d2, d3: d3, d4: d4, d5: d5)
    
    let sourceLocation = SourceLocation(fileID: fileID, filePath: filePath, line: line, column: column)
    #expect(roll.score(scoreType) == expectedScore, sourceLocation: sourceLocation)
}
