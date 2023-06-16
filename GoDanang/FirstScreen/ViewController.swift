//
//  ViewController.swift
//  GoDanang
//
//  Created by Марк Пушкарь on 12.05.2023.
//

import UIKit

class ViewController: UIViewController {
    
    let networking = NetworkFetcherService()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        networking.fetch { result in
            guard let result = result else {return}
            for item in result.data {
                print(item.name)
            }
        }
        

        
    }

}

