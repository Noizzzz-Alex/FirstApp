//
//  Cities.swift
//  FirstApp
//
//  Created by Александр Харлампов on 28.11.2023.
//

import Foundation

struct City: Decodable {
    let name: String
    let timeZone: String
    let coords: Coodinates
    let currancy: String
}
struct Coodinates: Decodable{
    let lat: Double
    let lon: Double
}
