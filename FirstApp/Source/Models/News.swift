//
//  News.swift
//  FirstApp
//
//  Created by Александр Харлампов on 29.11.2023.
//

import Foundation

struct NewsResults: Decodable {
    let results: [News]
}
struct News: Decodable {
    let publicationDate: UInt
    let title: String
    let bodyText: String

    //сколько свойств в структуре столько и должно быть в CodingKeys иначе вылезет ошибка
    enum CodingKeys: String, CodingKey {
        case publicationDate = "publication_date"
        case title
        case bodyText = "body_text"
    }
}
