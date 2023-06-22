//
//  ViewController.swift
//  GoDanang
//
//  Created by Марк Пушкарь on 12.05.2023.
//

import UIKit

class ViewController: UIViewController {
    
    weak var coordinator: FirstScreenCoordinator?
    
    private let viewModel: FirtsScreenViewModel
    
    private let firstScreenView = FirstScreenView()
    
    //MARK: Init and LifeCycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        getData()
    }
        
    private func getData() {
        viewModel.getDetaisAndPhotos { poi in
            self.firstScreenView.data.append(poi)
        }
    }

    init(viewModel: FirtsScreenViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

private extension ViewController {
    
     func setupViews() {
         firstScreenView.onTap = viewModel.onTapShowNextModule
         view.backgroundColor = UIColor(red: 0.17, green: 0.22, blue: 0.24, alpha: 1)
         view.addSubview(firstScreenView)
         
         let constrains = [
            firstScreenView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            firstScreenView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            firstScreenView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            firstScreenView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor)
         ]
         NSLayoutConstraint.activate(constrains)
    }
}
