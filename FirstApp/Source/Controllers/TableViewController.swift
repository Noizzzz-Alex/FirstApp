//
//  TableViewController.swift
//  FirstApp
//
//  Created by Александр Харлампов on 24.11.2023.
//

import UIKit

class TableViewController: UITableViewController,NetworkServiceDelegate {
    func updateCities(cities: [City]) {
        self.cities = cities
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
        
    }
    
    let networkService = NetworkService()
    private var cities = [City]()

    override func viewDidLoad() {
        super.viewDidLoad()
        networkService.delegate = self
        tableView.register(CustomTableViewCell.self, forCellReuseIdentifier: CustomTableViewCell.identifier)
        networkService.getCitiesDelegate()
//        networkService.getCities { [weak self] cities in
//            self?.cities = cities
//            DispatchQueue.main.async {
//                self?.tableView.reloadData()
//            }
//        }
        //networkService.getCatError(errorCode: 403)
        //networkService.getActualNews()
        //networkService.getPlaces()
        //networkService.getMovies()
    }
    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return number of rows
        cities.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(
            withIdentifier: CustomTableViewCell.identifier,
            for: indexPath) as? CustomTableViewCell else {
                return UITableViewCell()
        }
        cell.configureCell(city: cities[indexPath.row])
        return cell
    }
}
#Preview{
    TableViewController()
}
