//
//  Places.swift
//  FirstApp
//
//  Created by Александр Харлампов on 29.11.2023.
//

import Foundation
struct placesResults: Decodable {
    let results: [Place]
}
struct Place: Decodable {
    let title: String
    let address: String
    let phone: String
}
