//
//  MovieQuizViewControllerProtocol.swift
//  MovieQuiz
//
//  Created by Иульяния on 23.04.2026.
//

import Foundation

protocol MovieQuizViewControllerProtocol: AnyObject {
    func show(quiz step: QuizStepViewModel)
    func show(quiz result: QuizResultsViewModel)
    func highlightImageBorder(isCorrectAnswer: Bool)
    func showLoadingIndicator()
    func hideLoadingIndicator()
    func showNetworkError(message: String)
    func enableButtons()
    func disableButtons()
}
