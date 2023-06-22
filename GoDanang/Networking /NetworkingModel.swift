//
//  NetworkingModel.swift
//  GoDanang
//
//  Created by Марк Пушкарь on 13.06.2023.
//


import Foundation

// MARK: - LocationDetails
struct LocationDetails: Codable {
    let locationID, name, description: String?
    

    enum CodingKeys: String, CodingKey {
        case locationID = "location_id"
        case name, description
       
    }
}



// MARK: - LocationPhotos
struct LocationPhotos: Codable {
    let data: [Photos]?
}

// MARK: - Datum
struct Photos: Codable {
    let id: Int?
    let isBlessed: Bool?
    let images: Images?

    enum CodingKeys: String, CodingKey {
        case id
        case isBlessed = "is_blessed"
        case images
    }
}

// MARK: - Images
struct Images: Codable {
    let thumbnail, small, medium, large: Large?
    let original: Large?
}

// MARK: - Large
struct Large: Codable {
    let height, width: Int?
    let url: String?
}




