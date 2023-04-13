//
//  Question.swift
//  GameMillionaire
//

import Foundation

struct Question: Codable {
    let question: String
    var answers: [String]
    let rightAnswer: Int
    let cash: Double
}
