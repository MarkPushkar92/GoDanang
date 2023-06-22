//
//  NetworkFetcherService.swift
//  GoDanang
//
//  Created by Марк Пушкарь on 13.06.2023.
//

import Foundation

class NetworkFetcherService {
    
    private let networkDataFetcher = DataFetcher()
    
    private let apiKey = ""
    
    private func fetchDetails(locationId: String ,completion: @escaping (LocationDetails?) -> Void) {
        
        let urlString = "https://api.content.tripadvisor.com/api/v1/location/\(locationId)/details?key=\(apiKey)&language=en"
        networkDataFetcher.fetchData(urlString: urlString, response: completion)
    }
    
    private func fetchPhotos(locationId: String ,completion: @escaping (LocationPhotos?) -> Void) {
        
        let urlString = "https://api.content.tripadvisor.com/api/v1/location/\(locationId)/photos?key=\(apiKey)&language=en"
        networkDataFetcher.fetchData(urlString: urlString, response: completion)
    }
    
    func fetchData(locationId: String, closure: @escaping (LocationDetails?, LocationPhotos?) -> Void) {
        fetchDetails(locationId: locationId) { details in
            self.fetchPhotos(locationId: locationId) { photos in
                closure(details, photos)
            }
        }
    }
    
    
    
    
}

