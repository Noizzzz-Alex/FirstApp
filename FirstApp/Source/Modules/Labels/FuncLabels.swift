//
//  FuncLabels.swift
//  FirstApp
//
//  Created by Александр Харлампов on 06.12.2023.
//

import Foundation
import UIKit

struct Labels {
    
    static func createLabel(text: String, fontSize: CGFloat, textAlignment: NSTextAlignment, textColor: UIColor) -> UILabel {
        let label = UILabel()
        label.text = text
        label.font = UIFont.systemFont(ofSize: fontSize)
        label.textAlignment = textAlignment
        label.textColor = textColor
        return label
    }
    
}
