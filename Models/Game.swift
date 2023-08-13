//
//  Game.swift
//  Code History Game
//
//  Created by Kyle Granquist on 8/4/23.
//

import Foundation

struct Game {
    private(set) var currentIndex = 0
    private(set) var guesses = [Question: Int]()
    private(set) var isOver = false
    private let questions = Question.allQuestions.shuffled()
    
    var GuessCount: (correct: Int, incorrect: Int) {
        var count: (correct: Int, incorrect: Int) = (0,0)
        for (question, guessedIndex) in guesses {
            if guessedIndex == question.correctAnswerIndex {
                count.correct += 1
            } else {
                count.incorrect += 1
            }
        }
        return count
    }
    
    mutating func updateGameStatus(){
        if currentIndex < questions.count - 1 {
            currentIndex += 1
        }
        else {
            isOver = true
        }
    }
    
    var numberOfQuestions: Int {
        questions.count
    }
    var currentQuestion: Question {
        questions[currentIndex]
    }
    mutating func makeGuessForCurrentQuestion(atIndex index: Int) {
        guesses[currentQuestion] = index
    }
    
    
}
