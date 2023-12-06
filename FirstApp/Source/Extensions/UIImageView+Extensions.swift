//
//  UIImageView+Extensions.swift
//  FirstApp
//
//  Created by Александр Харлампов on 29.11.2023.
//

import UIKit

extension UIImageView {
    func getDogImage() {
        let session = URLSession.shared // создание сессии со стандартной конфигурацией

        guard let url =
            URL(
                string: "https://random.dog/woof.json")
        else {
            return
        }
        session.dataTask(with: url) { data, _, _ in
            guard let data else { return } // проверяем что пришли хоть какие то данные

            let dogImageURL = try? JSONDecoder().decode(DogImageModel.self, from: data).url // try? в случае ошибки получим nil

            //            print(dogImage ?? UIImage())
            guard let url = URL(string: dogImageURL ?? "") else { return }

            URLSession.shared.dataTask(with: url) { [weak self] data, _, _ in
                guard let data, let picture = UIImage(data: data) else { return }

                DispatchQueue.main.async {self?.image = picture}

            }.resume()
        }.resume()
    }
}
