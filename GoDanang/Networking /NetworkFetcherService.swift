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
    
    func fetch(completion: @escaping (NearbyRequest?) -> Void) {
        let urlString = "https://api.content.tripadvisor.com/api/v1/location/nearby_search?latLong=16.047079%2C108.206230&key=\(apiKey)&category=attractions&radius=10&radiusUnit=km&language=en"

      
        networkDataFetcher.fetchData(urlString: urlString, response: completion)
    }
    
}

