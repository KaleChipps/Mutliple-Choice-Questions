//
//  ScoreViewModel.swift
//  Code History Game
//
//  Created by Kyle Granquist on 8/8/23.
//

import Foundation

struct ScoreViewModel {
    let correctGuesses: Int
    let incorrectGuesses: Int
    
    var percentage: Int {
        (correctGuesses * 100 / (correctGuesses + incorrectGuesses))
    }
}
