//
//  FirstScreenCoordinator.swift
//  GoDanang
//
//  Created by Марк Пушкарь on 12.05.2023.
//

import UIKit

class FirstScreenCoordinator: Coordinator {
    
    var coordinators: [Coordinator] = []
    let navigation: UINavigationController
    let factory: ControllerFactory

    private lazy var firstScreen = {
        factory.makeFirstScreen()
    }()
    
    init(navigation: UINavigationController,factory: ControllerFactory) {
        self.navigation = navigation
        self.factory = factory
    }
    
    func start() {
        navigation.navigationBar.isHidden = true
        navigation.pushViewController(firstScreen.controller, animated: true)
        
        firstScreen.viewModel.onShowNext = { details in
            
            guard let details = details else { return }
            
            let vc = POIdetailsViewController(viewModel: self.firstScreen.viewModel, details: details)
            self.navigation.pushViewController(vc, animated: true)
            
        }
     
    }
    
   
}
