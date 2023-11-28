//
//  CustomButton.swift
//  FirstApp
//
//  Created by Александр Харлампов on 24.11.2023.
//

import UIKit

final class CustomButton: UIButton {
    init(text: String) {
        super.init(frame: .zero)
        setTitle(text, for: .normal)
        setTitleColor(.white, for: .normal)
        setTitleColor(.green, for: .highlighted)
        backgroundColor = .darkGray
        layer.cornerRadius = 10
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
   

