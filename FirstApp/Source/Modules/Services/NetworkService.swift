//
//  NetworkService.swift
//  FirstApp
//
//  Created by Александр Харлампов on 28.11.2023.
//
import Foundation

protocol NetworkServiceDelegate: AnyObject {
    func updateCities(cities: [City])
}

final class NetworkService {
    weak var delegate: NetworkServiceDelegate?
    private let session = URLSession.shared

    func getCities(completion: @escaping ([City]) -> Void) {
        guard let url =
            URL(
                string: "https://kudago.com/public-api/v1.2/locations/?lang=ru&fields=timezone,name,currency,coords")
        else {
            return
        }
        session.dataTask(with: url) { data, _, error in
            guard let data else { return } // проверяем что пришли хоть какие то данные

            do {
                let cities = try JSONDecoder().decode([City].self, from: data)
                completion(cities)
            } catch {
                print(error) // здесь будет выводится ошибки декодирования а не те ошибки что придут из сети
            }
        }.resume()
    }

    func getCatError(errorCode: Int) {
        guard let url = URL(string: "https://http.cat/\(errorCode)") else { return }

        session.dataTask(with: url) { data, _, _ in // здесь не нужны респонс и еррор, поэтому вместо них нижнее подчеркивание
            print(data ?? "Error receiving data")
        }
        .resume()
    }
    //метод через делегат
    func getCitiesDelegate() {
        guard let url =
            URL(
                string: "https://kudago.com/public-api/v1.2/locations/?lang=ru&fields=timezone,name,currency,coords")
        else {
            return
        }
        session.dataTask(with: url) { [weak self] data, _, error in
            guard let data else { return } // проверяем что пришли хоть какие то данные
            
            do {
                let cities = try JSONDecoder().decode([City].self, from: data)
                self?.delegate?.updateCities(cities: cities)
            } catch {
                print(error) // здесь будет выводится ошибки декодирования а не те ошибки что придут из сети
            }
        }.resume()
    }

    func getActualNews() {
        guard let url = URL(string: "https://kudago.com/public-api/v1.4/news/?lang=&fields=publication_date,title,body_text&text_format=text&actual_only=true") else {
            return
        }
        session.dataTask(with: url) { data, _, error in
            guard let data else { return } // проверяем что пришли хоть какие то данные

            do {
                let cities = try JSONDecoder().decode(NewsResults.self, from: data)
                print(cities)
            } catch {
                print(error) // здесь будет выводится ошибки декодирования а не те ошибки что придут из сети
            }
        }.resume()
    }

    func getPlaces() {
        guard let url = URL(string: "https://kudago.com/public-api/v1.2/places/") else {
            return
        }
        session.dataTask(with: url) { data, _, error in
            guard let data else { return } // проверяем что пришли хоть какие то данные

            do {
                let cities = try JSONDecoder().decode(placesResults.self, from: data)
                print(cities)
            } catch {
                print(error) // здесь будет выводится ошибки декодирования а не те ошибки что придут из сети
            }
        }.resume()
    }

    func getMovies() {
        guard let url = URL(string: "https://kudago.com/public-api/v1.4/movies/?lang=&fields=title,site_url,body_text,country,year,imdb_rating") else {
            return
        }
        session.dataTask(with: url) { data, _, error in
            guard let data else { return } // проверяем что пришли хоть какие то данные

            do {
                let cities = try JSONDecoder().decode(MoviesResults.self, from: data)
                print(cities)
            } catch {
                print(error) // здесь будет выводится ошибки декодирования а не те ошибки что придут из сети
            }
        }.resume()
    }
}
