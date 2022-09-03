//
//  SceneDelegate.swift
//  GreetWell
//
//  Created by Ani Adhikary on 06/06/20.
//  Copyright © 2020 Ani Adhikary. All rights reserved.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    let navigationController = UINavigationController()

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
        print("SceneDelegate called------------")
        guard let windowScene = (scene as? UIWindowScene) else { return }
        let window = UIWindow(windowScene: windowScene)
        self.window = window
        window.makeKeyAndVisible()
        setupNavigationController()
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.

        // Save changes in the application's managed object context when the application transitions to the background.
        (UIApplication.shared.delegate as? AppDelegate)?.saveContext()
    }

    //Setup Nav and Tab Bar with Opaque Bg
       func setupNavigationController() {
           window?.rootViewController = navigationController
           
           if #available(iOS 13.0, *) {
               let navBarAppearance = UINavigationBarAppearance()
               //navBarAppearance.configureWithDefaultBackground()
               navBarAppearance.configureWithOpaqueBackground()
               
               navigationController.navigationBar.standardAppearance = navBarAppearance
               navigationController.navigationBar.compactAppearance = navBarAppearance
               navigationController.navigationBar.scrollEdgeAppearance = navBarAppearance
           }
           
           let mainTabBarController = MainTabBarController()
           if #available(iOS 13.0, *) {
               let tabBarAppearance = UITabBarAppearance()
               tabBarAppearance.configureWithOpaqueBackground()
               
               //UITabBar.appearance().tintColor = #colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1) //Without this default blue color comes
               //UITabBar.appearance().tintColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
               UITabBar.appearance().tintColor = #colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1)
               UITabBar.appearance().backgroundImage = UIImage()
               UITabBar.appearance().shadowImage = UIImage()
               
               if #available(iOS 15.0, *) {
                   UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
               }
               
               mainTabBarController.tabBar.standardAppearance = tabBarAppearance
               mainTabBarController.setupTabBar()
           }
           
           navigationController.pushViewController(mainTabBarController, animated: true)
       }
    

}

