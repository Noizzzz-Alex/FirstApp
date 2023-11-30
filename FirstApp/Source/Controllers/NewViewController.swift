//
//  NewViewController.swift
//  FirstApp
//
//  Created by Александр Харлампов on 16.11.2023.
//

import UIKit

class NewViewController: UIViewController {
    
    // MARK: Random Color Views
    
    private let redView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        return view
    }()
    
    private let grayView: UIView = {
        let view = UIView()
        view.backgroundColor = .gray
        return view
    }()
    
    private let yellowView: UIView = {
        let view = UIView()
        view.backgroundColor = .yellow
        return view
    }()
    
    private let blueView: UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        return view
    }()
    
    private let blackView: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        return view
    }()
    
    private let purpleView: UIView = {
        let view = UIView()
        view.backgroundColor = .purple
        return view
    }()
    
    // MARK: Buttons
    
    private let goToTabButton = CustomButton(text: "Go to Tab")
    private let goToCollectionButton = CustomButton(text: "Go to Collection")
    
    //MARK: ScrollView
    private var contentSize: CGSize {
        CGSize(width: view.frame.width, height: view.frame.height * 2)
    }
    private lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.frame = view.bounds
        scrollView.contentSize = contentSize
        return scrollView
    }()
    
    //MARK: 
    
    
    //MARK: ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        title = "Next ViewConrtroller "
        // Do any additional setup after loading the view.
        setupView()
        setupConstraints()
        goToTabButton.addTarget(self, action: #selector(goToTabScreen), for: .touchUpInside)
        goToCollectionButton.addTarget(self, action: #selector(goToCollectionScreen), for: .touchUpInside)
    }
    
    private func setupView() {
        view.addSubview(redView)
        view.addSubview(grayView)
        view.addSubview(yellowView)
        view.addSubview(blackView)
        view.addSubview(blueView)
        view.addSubview(purpleView)
        view.addSubview(goToTabButton)
        view.addSubview(goToCollectionButton)
    }
    
    private func setupConstraints() {
        redView.translatesAutoresizingMaskIntoConstraints = false
        grayView.translatesAutoresizingMaskIntoConstraints = false
        yellowView.translatesAutoresizingMaskIntoConstraints = false
        blueView.translatesAutoresizingMaskIntoConstraints = false
        blackView.translatesAutoresizingMaskIntoConstraints = false
        purpleView.translatesAutoresizingMaskIntoConstraints = false
        goToTabButton.translatesAutoresizingMaskIntoConstraints = false
        goToCollectionButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            // MARK: redView
            
            redView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            redView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            
            redView.heightAnchor.constraint(equalToConstant: view.frame.size.height / 8),
            redView.trailingAnchor.constraint(equalTo: view.centerXAnchor, constant: -3),
            
            // MARK: blueView
            
            // привязывает расположение верхней границы синего к верхней границе "челки"
            blueView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            
            // привязывает высота(размер) синего к красному,высота будет одинаковая
            blueView.heightAnchor.constraint(equalTo: redView.heightAnchor),
            
            // привязывает ширину синего к красному, ширина будет одинаковая
            blueView.widthAnchor.constraint(equalTo: redView.widthAnchor),
            
            // отступаем от центра View
            blueView.leadingAnchor.constraint(equalTo: view.centerXAnchor, constant: 3),
            
            // MARK: grayView
            
            // привязали верхния якорь серого к нижней границе красного с отступом 15
            grayView.topAnchor.constraint(equalTo: redView.bottomAnchor, constant: 5),
            
            // привязали левый якорь к левой границе красного
            grayView.leadingAnchor.constraint(equalTo: redView.leadingAnchor),
            
            // привязали высоту к высоте красного, чтобы было идентично; так же и с шириной
            grayView.heightAnchor.constraint(equalTo: redView.heightAnchor),
            grayView.widthAnchor.constraint(equalTo: redView.widthAnchor),
            
            // MARK: blackView
            
            // привязали верхнюю границу к нижней границе синего с отступом 15
            blackView.topAnchor.constraint(equalTo: blueView.bottomAnchor, constant: 5),
            
            // привязали левую границу к левой границе синего
            blackView.leadingAnchor.constraint(equalTo: blueView.leadingAnchor),
            
            // привязали длину и ширину к размерам синего
            blackView.widthAnchor.constraint(equalTo: blueView.widthAnchor),
            blackView.heightAnchor.constraint(equalTo: blueView.heightAnchor),
            
            // MARK: yellowView
            
            // привязали верхнуюю границу к нижней серого с отступом 15
            yellowView.topAnchor.constraint(equalTo: grayView.bottomAnchor, constant: 5),
            
            // привязали границы и размеры к серому
            yellowView.leadingAnchor.constraint(equalTo: grayView.leadingAnchor),
            yellowView.heightAnchor.constraint(equalTo: grayView.heightAnchor),
            yellowView.widthAnchor.constraint(equalTo: grayView.widthAnchor),
            
            // MARK: purpleView
            
            purpleView.topAnchor.constraint(equalTo: blackView.bottomAnchor, constant: 5),
            purpleView.leadingAnchor.constraint(equalTo: blackView.leadingAnchor),
            purpleView.heightAnchor.constraint(equalTo: blackView.heightAnchor),
            purpleView.widthAnchor.constraint(equalTo: blackView.widthAnchor),
            
            // MARK: CustomButton "Go to Tab"
            
            goToTabButton.topAnchor.constraint(equalTo: yellowView.bottomAnchor, constant: 30),
            goToTabButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            goToTabButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            goToTabButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            
            //MARK: CustomButton "Go to Collection"
            
            goToCollectionButton.topAnchor.constraint(equalTo: goToTabButton.bottomAnchor, constant: 30),
            goToCollectionButton.leadingAnchor.constraint(equalTo: goToTabButton.leadingAnchor),
            goToCollectionButton.trailingAnchor.constraint(equalTo: goToTabButton.trailingAnchor),
            
        ])
    }
    
    // MARK: Objective-C Methods
}
    private extension NewViewController {
        @objc func goToTabScreen() {
            navigationController?.pushViewController(TableViewController(), animated: true)
        }
        @objc func goToCollectionScreen() {
            navigationController?.pushViewController(CollectionViewController(collectionViewLayout: UICollectionViewLayout()), animated: true)
        }
    }


#Preview {
    NewViewController()
}
