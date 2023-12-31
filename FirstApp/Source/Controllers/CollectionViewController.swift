//
//  CollectionViewController.swift
//  FirstApp
//
//  Created by Александр Харлампов on 25.11.2023.
//

import UIKit

class CollectionViewController: UICollectionViewController {
    private let reuseIdentifier = "Cell"
    
    
    override init(collectionViewLayout layout: UICollectionViewLayout) {
            let flowLayout = UICollectionViewFlowLayout()
            flowLayout.itemSize = CGSize(width: 100, height: 100)
            flowLayout.sectionInset = UIEdgeInsets(top: 10, left: 50, bottom: 30, right: 50)
            super.init(collectionViewLayout: flowLayout)
        }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.backgroundColor = .white
        collectionView!.register(CustomCollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
    }
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    //Переиспользование ячейки
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
        guard let cell = cell as? CustomCollectionViewCell else {
            return UICollectionViewCell()
        }
        cell.tap = {[weak self] image in
            let transition = CATransition()
            transition.duration = 1
            transition.timingFunction = CAMediaTimingFunction(name: .easeInEaseOut)
            transition.type = .fade
            self?.navigationController?.view.layer.add(transition, forKey: nil)
            self?.navigationController?.pushViewController(ImageViewController(image: image), animated: false)
        }
        
        
        return cell
    }
}
    


#Preview{
    CollectionViewController(collectionViewLayout: .init())
}
