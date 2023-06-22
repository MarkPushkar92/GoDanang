//
//  CuisineVC.swift
//  GoDanang
//
//  Created by Марк Пушкарь on 22.06.2023.
//


import UIKit

class CuisineVC: UIViewController {
    
    weak var coordinator: CuisineCoordinator?
    
    private let viewModel: CuisineViewModel
    
  
    
    //MARK: Init and LifeCycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
  
        
    init(viewModel: CuisineViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    
}

private extension CuisineVC {
    
     func setupViews() {
         view.backgroundColor = UIColor(red: 0.17, green: 0.22, blue: 0.24, alpha: 1)
         
//         let constrains = [
//
//         ]
//         NSLayoutConstraint.activate(constrains)
    }
}

