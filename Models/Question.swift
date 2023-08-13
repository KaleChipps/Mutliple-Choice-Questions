//
//  Question.swift
//  Code History Game
//
//  Created by Kyle Granquist on 7/31/23.
//

import Foundation

struct Question: Hashable {
    let questionText: String
    let possibleAnswers: [String]
    let correctAnswerIndex: Int
    
    static var allQuestions = [
        Question(questionText: "What was the first computer Bug?",
                 possibleAnswers: [
                                    "Ant",
                                   "Beetle",
                                   "Moth",
                                   "Fly"
                                  ],
                 correctAnswerIndex: 2),
        Question(questionText: "What was the first object oriented programming language?",
                         possibleAnswers: [
                            "Simula",
                            "Python",
                            "Swift",
                            "C"
                         ],
                         correctAnswerIndex: 0),
        Question(questionText: "Who invented the World Wide Web?",
                        possibleAnswers: [
                            "Steve Jobs",
                            "Linus Torvalds",
                            "Bill Gates",
                            "Tim Berners-Lee"
                        ],
                        correctAnswerIndex: 3)
        ]
}
