//
//  WebkitViewController.swift
//  FirstApp
//
//  Created by Александр Харлампов on 29.11.2023.
//

import UIKit
import WebKit

class WebkitViewController: UIViewController, WKNavigationDelegate {
    private lazy var webView: WKWebView = {
        let webView = WKWebView()
        webView.navigationDelegate = self
        return webView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        
        let url = URL (string:"https://www.youtube.com/")
        webView.load(URLRequest(url: url!))
        
        
        
        
    }
    
    private func tap(){
        let tab1 =
        UINavigationController(rootViewController:
                                TableViewController())
        //        let tab2 =
        //        UINavigationController(rootViewController:
        //        GroupsViewController ())
        let tab3 =
        UINavigationController(rootViewController:
                                CollectionViewController (collectionViewLayout:
                                                            UICollectionViewFlowLayout ()))
        
        tab1.tabBarItem.title = "Tab"
        tab3.tabBarItem.title = "Collection"
        
        let controllers = [tab1, tab3]
        
        let tabBarController = UITabBarController()
        tabBarController.viewControllers = controllers
        
        guard let firstScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
              let firstWindow = firstScene.windows.first else {
            return
        }
        firstWindow.rootViewController = tabBarController
    }
        
    private func setupViews(){
        view.addSubview(webView)
        setupConstraints(controller: webView)
    }
    
    private func setupConstraints(controller: UIView){
        controller.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            controller.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            controller.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            controller.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            controller.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
        
    }
    



}
#Preview{
    WebkitViewController()
}
