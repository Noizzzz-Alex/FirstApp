//
//  TableViewController.swift
//  FirstApp
//
//  Created by Александр Харлампов on 24.11.2023.
//

import UIKit

class TableViewController: UITableViewController {
    let networkService = NetworkService()

    override func viewDidLoad() {
        super.viewDidLoad()
        //networkService.fetchData()
        //networkService.getCatError(errorCode: 403)
        //networkService.getActualNews()
        //networkService.getPlaces()
        //networkService.getMovies()
    }
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        
        return 10
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return number of rows
        3
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        "Section"
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        CustomTableViewCell()
    }
    

}
#Preview{
    TableViewController()
}
