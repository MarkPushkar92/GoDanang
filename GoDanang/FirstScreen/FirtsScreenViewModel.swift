//
//  FirtsScreenViewModel.swift
//  GoDanang
//
//  Created by Марк Пушкарь on 12.05.2023.
//

import UIKit

protocol FirstScreenOutput {
    
    func getData(closure: @escaping (String?, String?) -> Void)
    
}

final class FirtsScreenViewModel: FirstScreenOutput {
    
    private let placesToVisit = ["Bana Hills": "2255351" , "Marble Moutains": "454980", "Lady Buddha": "5531576", "Hoi An Ancient Town": "4507121", "My Khe" : "7687457", "Asia Park" : "8291301"]
    
    private let netWorking = NetworkFetcherService()
    
    func getData(closure: @escaping (String?, String?) -> Void) {
        placesToVisit.forEach { key, value in
            netWorking.fetchTogether(locationId: value, closure: closure)
        }
    }
    

    
    
  
}
