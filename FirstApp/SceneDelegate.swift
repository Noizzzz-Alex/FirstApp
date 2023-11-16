//
//  SceneDelegate.swift
//  FirstApp
//
//  Created by Александр Харлампов on 09.11.2023.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Используйте этот метод для дальнейшей настройки и присоединения «окна» UIWindow к предоставленной «сцене» UIWindowScene.
         // При использовании раскадровки свойство окна будет автоматически инициализировано и прикреплено к сцене.
         // Этот делегат не указывает, что сцена или сеанс подключения являются новыми (вместо этого см. `application:configurationForConnectingSceneSession`)'
        guard let scene = (scene as? UIWindowScene) else { return }
        let navigatinController = UINavigationController(rootViewController: ViewController()) // первый экран, корневой
        window = UIWindow(windowScene: scene)
        window?.rootViewController = navigatinController
        window?.makeKeyAndVisible()
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Вызывается, когда система освобождает сцену.
         // Это происходит вскоре после того, как сцена переходит в фоновый режим или когда ее сеанс завершается.
         // Освободите все ресурсы, связанные с этой сценой, которые можно будет воссоздать при следующем подключении сцены.
         // Сцена может повторно подключиться позже, поскольку ее сеанс не обязательно был отменен (вместо этого см. `application:didDiscardSceneSessions`).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Вызывается, когда сцена перешла из неактивного состояния в активное.
         // Используйте этот метод для перезапуска любых задач, которые были приостановлены (или еще не запущены), когда сцена была неактивна.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Вызывается, когда сцена перейдет из активного состояния в неактивное.
         // Это может произойти из-за временных прерываний (например, входящего телефонного звонка).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Вызывается при переходе сцены с фона на передний план.
         // Используйте этот метод, чтобы отменить изменения, внесенные при входе в фон.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Вызывается при переходе сцены с переднего плана на задний.
         // Используйте этот метод для сохранения данных, освобождения общих ресурсов и хранения достаточного количества информации о состоянии, специфичной для сцены.
         // чтобы вернуть сцену в ее текущее состояние.
    }
}
