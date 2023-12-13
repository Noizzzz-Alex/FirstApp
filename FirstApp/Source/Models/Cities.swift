//
//  Cities.swift
//  FirstApp
//
//  Created by Александр Харлампов on 28.11.2023.
//

import Foundation

struct City: Decodable {
    let name: String
    let timezone: String
    let coords: Coordinates
    let currency: String
}
struct Coordinates: Decodable{
    let lat: Double
    let lon: Double
}
