//
//  MainCordinator.swift
//  GoDanang
//
//  Created by Марк Пушкарь on 12.05.2023.
//

import UIKit

class MainCoordinator: Coordinator {
    
    var coordinators: [Coordinator] = []
    let tabBarController: TabBarViewController
    private let factory = ControllerFactoryImpl()
  
    init() {
        tabBarController = TabBarViewController()
        let first = firstScreen()
        let cuisine = CuisineScreen()
        coordinators.append(first)
        coordinators.append(cuisine)
        tabBarController.viewControllers = [first.navigation, cuisine.navigation]
        first.start()
        cuisine.start()
     
    }
    
    private func firstScreen() -> FirstScreenCoordinator {
        let navigation = UINavigationController()
        let coordinator = FirstScreenCoordinator(navigation: navigation, factory: factory)
        
        let image = UIImage.init(systemName: "house")
        let selectedImage = UIImage(systemName: "house.fill")
        
        
        
        navigation.tabBarItem = UITabBarItem(title: "", image: image?.withTintColor(.white, renderingMode: .alwaysOriginal), selectedImage: selectedImage?.withTintColor(.white, renderingMode: .alwaysOriginal))
        
        return coordinator
    }
    
    private func CuisineScreen() -> CuisineCoordinator {
        let navigation = UINavigationController()
        let coordinator = CuisineCoordinator(navigation: navigation, factory: factory)
        
        let image = UIImage.init(systemName: "frying.pan")
        let selectedImage = UIImage(systemName: "frying.pan.fill")
        navigation.tabBarItem = UITabBarItem(title: "", image: image?.withTintColor(.white, renderingMode: .alwaysOriginal), selectedImage: selectedImage?.withTintColor(.white, renderingMode: .alwaysOriginal))
        
        return coordinator
    }

   

}

