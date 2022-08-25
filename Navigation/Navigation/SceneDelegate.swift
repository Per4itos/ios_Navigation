//
//  SceneDelegate.swift
//  Navigation
//
//  Created by macOS on 23.08.2022.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    
    var window: UIWindow?
    
    
    let feedViewController = UINavigationController(rootViewController: FeedViewController())
    let profileViewController = UINavigationController(rootViewController: ProfileViewController())

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
       
        self.window = UIWindow(windowScene: windowScene)
       
        let tabBarController = UITabBarController()
       
        tabBarController.viewControllers = [feedViewController, profileViewController]
       
        tabBarController.viewControllers?.enumerated().forEach {
        $1.tabBarItem.title = $0 == 0 ? "Feed" : "Profile"
        $1.tabBarItem.image = $0 == 0
        ? UIImage(systemName: "text.justify")
        : UIImage(systemName: "person.icloud")
    }
        
        self.window?.rootViewController = tabBarController
        self.window?.makeKeyAndVisible()
    }
    
  
    func sceneDidDisconnect(_ scene: UIScene) {
       
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
      
    }

    func sceneWillResignActive(_ scene: UIScene) {
      
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
       
    }

}
