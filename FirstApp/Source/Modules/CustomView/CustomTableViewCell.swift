//
//  CustomTableViewCell.swift
//  FirstApp
//
//  Created by Александр Харлампов on 24.11.2023.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    override func awakeFromNib() {
        super.awakeFromNib()

        // Initialization code
    }

    private var circle: UIView = {
        let circle = UIView()
        circle.backgroundColor = .red
        circle.layer.cornerRadius = 25
        return circle
    }()

    private var text1: UILabel = {
        let label = UILabel()
        label.text = "Text"
        label.textColor = .black
        return label
    }()

//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        backgroundColor = .clear
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        contentView.addSubview(circle)
        contentView.addSubview(text1)
        setupConstraints()
    }
    
    private func setupConstraints(){
        circle.translatesAutoresizingMaskIntoConstraints = false
        text1.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            circle.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            circle.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            circle.heightAnchor.constraint(equalToConstant: 50),
            circle.widthAnchor.constraint(equalToConstant: 50),
            circle.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
            text1.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            text1.leadingAnchor.constraint(equalTo: circle.trailingAnchor, constant: 30),
            text1.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 10)
            
            
        ])
    }
}
#Preview{
    CustomTableViewCell()
}
