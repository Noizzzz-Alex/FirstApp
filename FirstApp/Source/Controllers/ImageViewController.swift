//
//  ImageViewController.swift
//  FirstAppUIKit
//
//  Created by Александр Харлампов on 25.11.2023.
//

import UIKit

final class ImageViewController: UIViewController {
    private var imageView = UIImageView()

    init(image: UIImage) {
        super.init(nibName: nil, bundle: nil)
        imageView.image = image
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupView()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        animation()
    }

    private func setupView() {
        view.addSubview(imageView)
        setupConstraints()
    }

    private func setupConstraints() {
        imageView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            imageView.widthAnchor.constraint(equalToConstant: view.frame.size.width / 2),
            imageView.heightAnchor.constraint(equalTo: imageView.widthAnchor),
        ])
    }

    private func animation() {
        //анимация поворота и увеличения картинки
        UIView.animate(withDuration: 1, delay: 0, options: [.repeat, .autoreverse]) {
            self.imageView.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
            self.imageView.transform = CGAffineTransform(rotationAngle: 45)
        }
        UIView.animate(withDuration: 3, delay: 1, options: [.repeat, .autoreverse]){
            self.imageView.layer.opacity = 0
        }
        
    }
}
