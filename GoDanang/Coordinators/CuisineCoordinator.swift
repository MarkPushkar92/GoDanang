//
//  CuisineCoordinator.swift
//  GoDanang
//
//  Created by Марк Пушкарь on 22.06.2023.
//

import UIKit

class CuisineCoordinator: Coordinator {
    
    var coordinators: [Coordinator] = []
    let navigation: UINavigationController
    let factory: ControllerFactory

    private lazy var cuisine = {
        factory.makeCuisineScreen()
    }()
    
    init(navigation: UINavigationController,factory: ControllerFactory) {
        self.navigation = navigation
        self.factory = factory
    }
    
    func start() {
        navigation.navigationBar.isHidden = true
        navigation.pushViewController(cuisine.controller, animated: true)
        
        
     
    }
    
   
}

