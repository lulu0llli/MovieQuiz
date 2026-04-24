//
//  MovieQuizViewControllerMock.swift
//  MovieQuizTests
//
//  Created by Иульяния on 23.04.2026.
//

import XCTest
@testable import MovieQuiz

final class MovieQuizViewControllerMock: MovieQuizViewControllerProtocol {
    
    var lastStepModel: QuizStepViewModel?
    var lastResultModel: QuizResultsViewModel?
    var lastIsCorrectAnswer: Bool?
    var isLoadingIndicatorShown = false
    var isErrorShown = false
    var buttonsEnabled = true
    
    func show(quiz step: QuizStepViewModel) {
        lastStepModel = step
    }
    
    func show(quiz result: QuizResultsViewModel) {
        lastResultModel = result
    }
    
    func highlightImageBorder(isCorrectAnswer: Bool) {
        lastIsCorrectAnswer = isCorrectAnswer
    }
    
    func showLoadingIndicator() {
        isLoadingIndicatorShown = true
    }
    
    func hideLoadingIndicator() {
        isLoadingIndicatorShown = false
    }
    
    func showNetworkError(message: String) {
        isErrorShown = true
    }
    
    func enableButtons() {
        buttonsEnabled = true
    }
    
    func disableButtons() {
        buttonsEnabled = false
    }
}
