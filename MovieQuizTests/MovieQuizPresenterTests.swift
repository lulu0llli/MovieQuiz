//
//  MovieQuizPresenterTests.swift
//  MovieQuizTests
//
//  Created by Иульяния on 23.04.2026.
//

import XCTest
@testable import MovieQuiz

final class MovieQuizPresenterTests: XCTestCase {
    
    func testConvertModel() throws {
        let viewControllerMock = MovieQuizViewControllerMock()
        let sut = MovieQuizPresenter(viewController: viewControllerMock)
        
        let emptyData = Data()
        let question = QuizQuestion(
            image: emptyData,
            text: "Question Test",
            correctAnswer: true
        )
        
        let viewModel = sut.convert(model: question)
        
        XCTAssertEqual(viewModel.question, "Question Test")
        XCTAssertEqual(viewModel.questionNumber, "1/10")
        XCTAssertNotNil(viewModel.image)
    }
}
