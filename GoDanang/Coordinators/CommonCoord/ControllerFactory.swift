//
//  ControllerFactory.swift
//  GoDanang
//
//  Created by Марк Пушкарь on 12.05.2023.
//



protocol ControllerFactory {
    func makeFirstScreen() -> (viewModel: FirtsScreenViewModel, controller: ViewController)

}

struct ControllerFactoryImpl: ControllerFactory {
    
    func makeFirstScreen() -> (viewModel: FirtsScreenViewModel, controller: ViewController) {
        let viewModel = FirtsScreenViewModel()
        let vc = ViewController()
        return (viewModel, vc)
    }
 
}

