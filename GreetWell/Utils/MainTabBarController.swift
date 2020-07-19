//
//  MainTabBarController.swift
//  Sarvopari
//
//  Created by Ani Adhikary on 25/03/18.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    var navController: UINavigationController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
    }
    
    func setupTabBar() {
        let homeVC = HomeViewController(nibName: "HomeViewController", bundle: nil)
        homeVC.tabBarItem.image = #imageLiteral(resourceName: "Home")
        homeVC.tabBarItem.selectedImage = #imageLiteral(resourceName: "Home_Selected")
        homeVC.tabBarItem.title = "Home"
        
        let commonErrorVC = CommonErrorViewController(nibName: "CommonErrorViewController", bundle: nil)
        
        commonErrorVC.tabBarItem.image = #imageLiteral(resourceName: "Activity")
        commonErrorVC.tabBarItem.selectedImage = #imageLiteral(resourceName: "Activity_Selected")
        commonErrorVC.tabBarItem.title = "Favourites"
        
        let favouritesVC = FavouritesViewController(nibName: "FavouritesViewController", bundle: nil)
        favouritesVC.tabBarItem.image = #imageLiteral(resourceName: "Activity")
        favouritesVC.tabBarItem.selectedImage = #imageLiteral(resourceName: "Activity_Selected")
        favouritesVC.tabBarItem.title = "Favourites"
        
        let quotesVC = QuotesListViewController(nibName: "QuotesListViewController", bundle: nil)
        quotesVC.tabBarItem.image = #imageLiteral(resourceName: "Activity")
        quotesVC.tabBarItem.selectedImage = #imageLiteral(resourceName: "Activity_Selected")
        quotesVC.tabBarItem.title = "Greeting Quotes"
        
        viewControllers = [homeVC, favouritesVC, quotesVC]
    }
}

extension MainTabBarController: UITabBarControllerDelegate {
    //MARK:-  UITabBarDelegate
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        //print("Selected item")
    }
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
    }
}
