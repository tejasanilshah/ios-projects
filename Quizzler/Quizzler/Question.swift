//
//  Question.swift
//  Quizzler
//
//  Created by Tejas Anil Shah on 23/09/17.
//  Copyright © 2017 Tejas. All rights reserved.
//

import Foundation

class Question {
    let questionText: String
    let answer: Bool
    
    init(text: String, correctAnswer: Bool) {
        questionText = text
        answer = correctAnswer
    }
}

