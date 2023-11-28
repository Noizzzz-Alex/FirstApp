//
//  NetworkService.swift
//  FirstApp
//
//  Created by Александр Харлампов on 28.11.2023.
//

import Foundation
final class NetworkService {
    private let session = URLSession.shared

    func fetchData() {
        guard let url =
            URL(
                string: "https://kudago.com/public-api/v1.2/locations/?lang=ru&fields=timezone,name,currency,coords")
        else {
            return
        }
        session.dataTask(with: url) { data, response, error in
            guard let data else { return }   //проверяем что пришли хоть какие то данные
            
        }
    }
}
