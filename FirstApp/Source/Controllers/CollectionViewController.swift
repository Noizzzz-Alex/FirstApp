//
//  CollectionViewController.swift
//  FirstApp
//
//  Created by Александр Харлампов on 25.11.2023.
//

import UIKit

class CollectionViewController: UICollectionViewController {
    private var collection = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Collection View"
        view.backgroundColor = .white
        view.addSubview(collection)
        setupConstraints()
        
    }
    private func setupConstraints(){
        collection.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            collection.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            collection.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            collection.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            collection.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        
        ])
    }
    func collection(_ collectionView: UICollectionView, numberOfItemsInSection
    section: Int) -> Int {
        return 1
    }
    
    
}
    
    
//    private let reuseIdentifier = "Cell"
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        collectionView.backgroundColor = .darkGray
//        //регистрируем ячейку и задаем ей идентификатор(имя) Cell
//        collectionView.register(CustomCollectionViewCell.self, forCellWithReuseIdentifier: "Cell")
//        
//        
//    }
//
//    // MARK: UICollectionViewDataSource
//
//    override func numberOfSections(in collectionView: UICollectionView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//         return 1
//    }
//
//
//    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        // #warning Incomplete implementation, return the number of items
//         2
//    }
//
//    // в этом метоже мы поставляем ячейки для нашей коллекции
//    // IndexPath это объект который предоставляет нам информацию о положении ячейки в CollectionView или TableView
//    // т.е секцию ячейки и порядковый номер
//    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        //очередь переиспользования ячеек. передаем зарегистрированную ячейку Cell
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath)
//        guard let cell = cell as? CustomCollectionViewCell else {
//            return UICollectionViewCell()
//        }
//        cell.tap = {[weak self] image in
//            self?.navigationController?.pushViewController(ViewController(), animated: true)
//        }
//        
//    
//        return cell
//    }

    


//#Preview{
//    CollectionViewController()
//}
