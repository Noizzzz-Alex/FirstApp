//
//  CustomProtocols.swift
//  FirstApp
//
//  Created by Александр Харлампов on 25.11.2023.
//

import Foundation
import UIKit

protocol ScreenTransitionProtocol {
    associatedtype DestinationController: UIViewController
    
    func navigate(to viewController: DestinationController)
}


protocol NavigationCoordinator {
    func navigateToNextScreen()
    // Добавьте другие методы для перехода на дополнительные экраны
}
