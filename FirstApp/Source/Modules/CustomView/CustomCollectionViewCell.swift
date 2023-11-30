//
//  CustomCollectionViewCell.swift
//  FirstApp
//
//  Created by Александр Харлампов on 25.11.2023.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    
    //Замыкание, принимающие на вход картинку, которая есть в ячейке
    var tap: ((UIImage) -> Void)?
    private var imageView = UIImageView(image: UIImage(systemName: "person"))
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        imageView.getDogImage()
        setupView()
        
        
//        UIGestureRecognizer (распознаватель жестов) - это класс в iOS, который позволяет распознавать и обрабатывать различные жесты, такие как нажатие, свайп, перемещение, масштабирование и вращение.
//
//        UIGestureRecognizer является абстрактным классом, от которого наследуются конкретные классы распознавателей жестов, такие как UITapGestureRecognizer (распознавание нажатия), UISwipeGestureRecognizer (распознавание свайпа), UIPanGestureRecognizer (распознавание перемещения), UIPinchGestureRecognizer (распознавание масштабирования) и UIRotationGestureRecognizer (распознавание вращения).
//
//        Вы можете добавить распознаватель жестов к любому объекту в пользовательском интерфейсе, например, к UIView или UIViewController. Когда жест будет обнаружен, соответствующий обработчик будет вызван, и вы сможете выполнить необходимые действия в ответ на этот жест.
        let recognizer = UITapGestureRecognizer(target: self, action: #selector(sellTap))
        addGestureRecognizer(recognizer)
        
        
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    private func setupView(){
        addSubview(imageView)
        setupConstraints()
    }
    private func setupConstraints(){
        imageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: topAnchor),
            imageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            imageView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
        
    }
    @objc func sellTap(){
        //опционал, если картинки нет то возвращаем любую пустую картинку
        tap?(imageView.image ?? UIImage())
    }
    
    
}
#Preview{
    CustomCollectionViewCell()
}
