//
//  POIdetailsViewController.swift
//  GoDanang
//
//  Created by Марк Пушкарь on 21.06.2023.
//

import UIKit

class POIdetailsViewController: UIViewController {
    
    weak var coordinator: FirstScreenCoordinator?
    
    private let viewModel: FirtsScreenViewModel
    
    private var details: POIdetaisl
    
    private lazy var detailsView = DetailsScreenVIew(details: details)
    
    //MARK: Init and LifeCycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = false
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.navigationBar.isHidden = true
    }
        
    init(viewModel: FirtsScreenViewModel, details: POIdetaisl) {
        self.details = details
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    
}

private extension POIdetailsViewController {
    
     func setupViews() {
         view.backgroundColor = UIColor(red: 0.17, green: 0.22, blue: 0.24, alpha: 1)
         view.addSubview(detailsView)
         
         let constrains = [
            detailsView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            detailsView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            detailsView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            detailsView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor)
         ]
         NSLayoutConstraint.activate(constrains)
    }
}

