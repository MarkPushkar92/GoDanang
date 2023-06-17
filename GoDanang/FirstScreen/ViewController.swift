//
//  ViewController.swift
//  GoDanang
//
//  Created by Марк Пушкарь on 12.05.2023.
//

import UIKit

class ViewController: UIViewController {
    
    let networking = NetworkFetcherService()
    
    let firstScreenView = FirstScreenView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
}

private extension ViewController {
    
     func setupViews() {
         view.backgroundColor = .white
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
