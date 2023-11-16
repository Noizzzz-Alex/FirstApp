//
//  NewViewController.swift
//  FirstApp
//
//  Created by Александр Харлампов on 16.11.2023.
//

import UIKit

final  class NewViewController: UIViewController {
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

    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        title = "Next ViewConrtroller "
        // Do any additional setup after loading the view.
        setupView()
        setupConstraints()
//        
    }
    
    private func setupView() {
        view.addSubview(redView)
        view.addSubview(grayView)
        view.addSubview(yellowView)
        view.addSubview(blackView)
        view.addSubview(blueView)
        view.addSubview(purpleView)
    }
    
    private func setupConstraints(){
        redView.translatesAutoresizingMaskIntoConstraints = false
        grayView.translatesAutoresizingMaskIntoConstraints = false
        yellowView.translatesAutoresizingMaskIntoConstraints = false
        blueView.translatesAutoresizingMaskIntoConstraints = false
        blackView.translatesAutoresizingMaskIntoConstraints = false
        purpleView.translatesAutoresizingMaskIntoConstraints = false
        
        
        NSLayoutConstraint.activate([
            // MARK: redView
            redView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            redView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            
            redView.heightAnchor.constraint(equalToConstant: view.frame.size.height / 8),
            redView.trailingAnchor.constraint(equalTo: view.centerXAnchor, constant: -3),
            // MARK: blueView
            // привязывает расположение верхней границы синего к верхней границе "челки"
            blueView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            
            //привязывает высота(размер) синего к красному,высота будет одинаковая
            blueView.heightAnchor.constraint(equalTo: redView.heightAnchor),
            
            //привязывает ширину синего к красному, ширина будет одинаковая
            blueView.widthAnchor.constraint(equalTo: redView.widthAnchor),
            
            //отступаем от центра view
            blueView.leadingAnchor.constraint(equalTo: view.centerXAnchor, constant: 3),
            
            // MARK: grayView
            //привязали верхния якорь серого к нижней границе красного с отступом 15
            grayView.topAnchor.constraint(equalTo: redView.bottomAnchor, constant: 5),
            
            //привязали левый якорь к левой границе красного
            grayView.leadingAnchor.constraint(equalTo: redView.leadingAnchor),
            
            //привязали высоту к высоте красного, чтобы было идентично; так же и с шириной
            grayView.heightAnchor.constraint(equalTo: redView.heightAnchor),
            grayView.widthAnchor.constraint(equalTo: redView.widthAnchor),
            
            //MARK: blackView
            //привязали верхнюю границу к нижней границе синего с отступом 15
            blackView.topAnchor.constraint(equalTo: blueView.bottomAnchor, constant: 5),
            
            //привязали левую границу к левой границе синего
            blackView.leadingAnchor.constraint(equalTo: blueView.leadingAnchor),
            
            //привязали длину и ширину к размерам синего
            blackView.widthAnchor.constraint(equalTo: blueView.widthAnchor),
            blackView.heightAnchor.constraint(equalTo: blueView.heightAnchor),
            
            
            // MARK: yellowView
            // привязали верхнуюю границу к нижней серого с отступом 15
            yellowView.topAnchor.constraint(equalTo: grayView.bottomAnchor, constant: 5),
            
            //привязали границы и размеры к серому
            yellowView.leadingAnchor.constraint(equalTo: grayView.leadingAnchor),
            yellowView.heightAnchor.constraint(equalTo: grayView.heightAnchor),
            yellowView.widthAnchor.constraint(equalTo: grayView.widthAnchor),
            
            //MARK: purpleView
            
            purpleView.topAnchor.constraint(equalTo: blackView.bottomAnchor, constant: 5),
            purpleView.leadingAnchor.constraint(equalTo: blackView.leadingAnchor),
            purpleView.heightAnchor.constraint(equalTo: blackView.heightAnchor),
            purpleView.widthAnchor.constraint(equalTo: blackView.widthAnchor)
        ])
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
#Preview{
    NewViewController()
}
