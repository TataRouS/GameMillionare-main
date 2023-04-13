//
//  QuestionShowStrategy.swift
//  GameMillionaire
//

import Foundation

protocol QuestionShowStrategy {
    func mixQuestion(_ questionShow: QuestionShow) -> [Question]
}

class ConsistentlyQuestionsStrategy: QuestionShowStrategy {
    func mixQuestion(_ questionShow: QuestionShow) -> [Question] {
        return Game.shared.questions
    }
}

class ChaoticQuestionsStrategy: QuestionShowStrategy {
    func mixQuestion(_ questionShow: QuestionShow) -> [Question] {
        return Game.shared.questions.shuffled()
    }
}
