//
//  MostPopularMovies.swift
//  MovieQuiz
//
//  Created by Иульяния on 18.04.2026.
//

import Foundation

/// Ответ от API IMDb с топ-250 фильмов
struct MostPopularMovies: Codable {
    let errorMessage: String
    let items: [MostPopularMovie]
}

/// Информация об одном фильме
struct MostPopularMovie: Codable {
    let title: String      // полное название (fullTitle из JSON)
    let rating: String     // рейтинг (imDbRating из JSON)
    let imageURL: URL      // ссылка на картинку (image из JSON)
    
    var resizedImageURL: URL {                    // ← ДОБАВИТЬ ВЕСЬ БЛОК
            let urlString = imageURL.absoluteString
            let imageUrlString = urlString.components(separatedBy: "._")[0] + "._V0_UX600_.jpg"
            
            guard let newURL = URL(string: imageUrlString) else {
                return imageURL
            }
            return newURL
        }
    
    // Сопоставляем названия полей в Swift с ключами в JSON
    private enum CodingKeys: String, CodingKey {
        case title = "fullTitle"    // в JSON поле называется "fullTitle"
        case rating = "imDbRating"  // в JSON поле называется "imDbRating"
        case imageURL = "image"     // в JSON поле называется "image"
    }
}
