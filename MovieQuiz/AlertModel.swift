//
//  AlertModel.swift
//  MovieQuiz
//
//  Created by Иульяния on 17.04.2026.
//

import Foundation

struct AlertModel {
    let title: String
    let message: String
    let buttonText: String
    let completion: () -> Void  
}
