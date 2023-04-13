//
//  QuestionShow.swift
//  GameMillionaire
//

import Foundation

enum QuestionShow: String, CaseIterable {
    case consistently, chaotic
}
extension CaseIterable where Self: Equatable {
    var index: Self.AllCases.Index? {
        return Self.allCases.firstIndex { self == $0 }
    }
}
