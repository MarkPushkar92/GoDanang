//
//  FirtsScreenViewModel.swift
//  GoDanang
//
//  Created by Марк Пушкарь on 12.05.2023.
//

import UIKit

protocol FirstScreenOutput {
    
    func getDetaisAndPhotos(closure: @escaping (POIdetaisl) -> ())
    
    var onTapShowNextModule: (POIdetaisl) -> Void { get }

    
}

final class FirtsScreenViewModel: FirstScreenOutput {
    
    private let placesToVisit = ["Bana Hills": "2255351" , "Marble Moutains": "454980", "Lady Buddha": "5531576", "Hoi An Ancient Town": "4507121", "My Khe" : "7687457", "Asia Park" : "8291301"]
    
    private let netWorking = NetworkFetcherService()
    
    func getDetaisAndPhotos(closure: @escaping (POIdetaisl) -> ())  {
        placesToVisit.forEach { key, value in
            netWorking.fetchData(locationId: value) { (details, photos) in
                guard let details = details else { return }
                guard let photos = photos?.data else { return }
                let name = details.name
                let description = details.description
                let id = details.locationID
                let urls = photos.map { $0.images?.original?.url }
                let poi = POIdetaisl(locationID: id, name: name, description: description, photoURLs: urls)
                closure(poi)
            }
        }
    }
    
    // интерфейс для отправки данных в координатор
    var onShowNext: ((POIdetaisl?) -> Void)?

    // интерфейс для приема данных от ViewController
    lazy var onTapShowNextModule: (POIdetaisl) -> Void = {  [weak self] details in
        self?.onShowNext?(details)
    }
    
}

