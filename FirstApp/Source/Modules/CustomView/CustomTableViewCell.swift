//
//  CustomTableViewCell.swift
//  FirstApp
//
//  Created by Александр Харлампов on 24.11.2023.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    static let identifier = "Cell"
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    private var circle: UIView = {
        let circle = UIView()
        circle.backgroundColor = .gray
        circle.layer.cornerRadius = 25
        return circle
    }()

    private var labelHigh = Labels.createLabel(text: "Text_1", fontSize: 30, textAlignment: .center, textColor: .black)
    private var labelMiddle = Labels.createLabel(text: "Text_2", fontSize: 25, textAlignment: .natural, textColor: .black)
    private var labelLow = Labels.createLabel(text: "Text_3", fontSize: 20, textAlignment: .natural, textColor: .black)
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        backgroundColor = .clear
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureCell(city: City){
        labelHigh.text = city.name
        labelMiddle.text = city.timezone
        labelLow.text = city.currency
        circle.backgroundColor = city.coords.lat + city.coords.lon < 100 ?
        #colorLiteral(red: 0.194247216, green: 0.9918989539, blue: 1, alpha: 1) : #colorLiteral(red: 0.4817662239, green: 0.1368521452, blue: 0.6649298668, alpha: 1)
    }
    
    private func setupViews() {
        contentView.addSubview(circle)
        contentView.addSubview(labelHigh)
        contentView.addSubview(labelMiddle)
        contentView.addSubview(labelLow)
        setupConstraintsCell()
    }
    
    private func setupConstraintsCell(){
        circle.translatesAutoresizingMaskIntoConstraints = false
        labelHigh.translatesAutoresizingMaskIntoConstraints = false
        labelMiddle.translatesAutoresizingMaskIntoConstraints = false
        labelLow.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            circle.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            circle.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            circle.heightAnchor.constraint(equalToConstant: 50),
            circle.widthAnchor.constraint(equalToConstant: 50),
            labelHigh.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            labelHigh.leadingAnchor.constraint(equalTo: circle.trailingAnchor, constant: 30),
            labelHigh.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -25),
            labelMiddle.topAnchor.constraint(equalTo: labelHigh.bottomAnchor, constant: 5),
            labelMiddle.leadingAnchor.constraint(equalTo: labelHigh.leadingAnchor),
            labelMiddle.trailingAnchor.constraint(equalTo: labelHigh.trailingAnchor),
            labelLow.topAnchor.constraint(equalTo: labelMiddle.bottomAnchor, constant: 5),
            labelLow.leadingAnchor.constraint(equalTo: labelMiddle.leadingAnchor),
            labelLow.trailingAnchor.constraint(equalTo: labelMiddle.trailingAnchor),
            labelLow.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
            
            
        ])
    }
}
#Preview{
    CustomTableViewCell()
}
