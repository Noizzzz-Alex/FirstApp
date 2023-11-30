//
//  ViewController.swift
//  FirstApp
//
//  Created by Александр Харлампов on 09.11.2023.
//

import UIKit

final class ViewController: UIViewController {
    private var isColorChanged = false
    private let label: UILabel = {
        let label = UILabel()
        label.backgroundColor = .blue
        label.text = "My First App"
        label.textAlignment = .center
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 30)
        return label
    }()

    private let button: UIButton = {
        let button = UIButton()
        button.setTitle("Go to the new screen", for: .normal)
        button.setTitleColor(.yellow, for: .normal)
        button.setTitleColor(.green, for: .highlighted)
        button.backgroundColor = .black
        return button
    }()
    private let buttonGoToWebKit: UIButton = {
        let button = UIButton()
        button.setTitle("Go to WebKit", for: .normal)
        button.setTitleColor(.yellow, for: .normal)
        button.setTitleColor(.green, for: .highlighted)
        button.backgroundColor = .black
        return button
    }()
    
    private let buttonChangeBackgroundColor: UIButton = {
        let button = UIButton()
        button.setTitle("Change Background Color", for: .normal)
        button.setTitleColor(.yellow, for: .normal)
        button.setTitleColor(.green, for: .highlighted)
        button.backgroundColor = .black
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow

        setupView()
        setupConstraint()

        button.addTarget(self, action: #selector(goToNextScreen), for: .touchUpInside)
        buttonChangeBackgroundColor.addTarget(self, action: #selector(changeBackgroundColor), for: .touchUpInside)
        buttonGoToWebKit.addTarget(self, action: #selector(goToWebScreen), for: .touchUpInside)
        
    }

    private func setupView() {
        view.addSubview(label)
        view.addSubview(button)
        view.addSubview(buttonChangeBackgroundColor)
        view.addSubview(buttonGoToWebKit)
    }

    private func setupConstraint() {
        label.translatesAutoresizingMaskIntoConstraints = false
        button.translatesAutoresizingMaskIntoConstraints = false
        buttonChangeBackgroundColor.translatesAutoresizingMaskIntoConstraints = false
        buttonGoToWebKit.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            // MARK: label

            label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.widthAnchor.constraint(equalToConstant: view.frame.size.width / 2),
            label.heightAnchor.constraint(equalToConstant: view.frame.size.width / 6),

            // MARK: button

            button.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 15),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            button.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            //MARK: changeColorButton
            buttonChangeBackgroundColor.topAnchor.constraint(equalTo: button.bottomAnchor,constant: 20),
            buttonChangeBackgroundColor.leadingAnchor.constraint(equalTo: button.leadingAnchor),
            buttonChangeBackgroundColor.trailingAnchor.constraint(equalTo: button.trailingAnchor),
            buttonChangeBackgroundColor.heightAnchor.constraint(equalTo: button.heightAnchor),
            buttonChangeBackgroundColor.widthAnchor.constraint(equalTo: button.widthAnchor),
            
            //MARK: changeColorButton
            buttonGoToWebKit.topAnchor.constraint(equalTo: buttonChangeBackgroundColor.bottomAnchor,constant: 20),
            buttonGoToWebKit.leadingAnchor.constraint(equalTo: button.leadingAnchor),
            buttonGoToWebKit.trailingAnchor.constraint(equalTo: button.trailingAnchor),
            buttonGoToWebKit.heightAnchor.constraint(equalTo: button.heightAnchor),
            buttonGoToWebKit.widthAnchor.constraint(equalTo: button.widthAnchor)
            
        ])
    }
    

    
}
// MARK: Objective-C Methods
private extension ViewController{
    @objc  func goToNextScreen() {
        navigationController?.pushViewController(NewViewController(), animated: true)
    }
    
    @objc func changeBackgroundColor(){
        isColorChanged.toggle()
        view.backgroundColor = isColorChanged ? .darkGray : .white
    }
    @objc  func goToWebScreen() {
        navigationController?.pushViewController(WebkitViewController(), animated: true)
    }
    
}

#Preview {
    ViewController()
}
