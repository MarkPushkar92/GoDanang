//
//  ControllerFactory.swift
//  GoDanang
//
//  Created by Марк Пушкарь on 12.05.2023.
//



protocol ControllerFactory {
    func makeFirstScreen() -> (viewModel: FirtsScreenViewModel, controller: ViewController)
    
    func makeCuisineScreen() -> (viewModel: CuisineViewModel, controller: CuisineVC)

}

struct ControllerFactoryImpl: ControllerFactory {
    
    func makeCuisineScreen() -> (viewModel: CuisineViewModel, controller: CuisineVC) {
        let viewModel = CuisineViewModel()
        let vc = CuisineVC(viewModel: viewModel)
        return (viewModel, vc)
    }
    
    
    func makeFirstScreen() -> (viewModel: FirtsScreenViewModel, controller: ViewController) {
        let viewModel = FirtsScreenViewModel()
        let vc = ViewController(viewModel: viewModel)
        return (viewModel, vc)
    }
 
}

