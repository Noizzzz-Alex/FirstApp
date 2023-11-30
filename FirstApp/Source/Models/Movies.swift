//
//  Movies.swift
//  FirstApp
//
//  Created by Александр Харлампов on 29.11.2023.
//

import Foundation

struct MoviesResults: Decodable {
    let results: [Movie]
}

struct Movie: Decodable {
    let title: String
    let siteURL: String
    let bodyText: String
    let country: String
    let year: Int
    let imdbRating: Double

    enum CodingKeys: String, CodingKey {
        
        case title
        case siteURL = "site_url"
        case bodyText = "body_text"
        case country
        case year
        case imdbRating = "imdb_rating"
    }
}
