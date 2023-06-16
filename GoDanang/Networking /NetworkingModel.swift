//
//  NetworkingModel.swift
//  GoDanang
//
//  Created by Марк Пушкарь on 13.06.2023.
//


import Foundation

// MARK: - NearbyRequest
struct NearbyRequest: Codable {
    let data: [Datum]
}

// MARK: - Datum
struct Datum: Codable {
    let locationID, name, distance: String
    let addressObj: AddressObj

    enum CodingKeys: String, CodingKey {
        case locationID = "location_id"
        case name, distance
        case addressObj = "address_obj"
    }
}

// MARK: - AddressObj
struct AddressObj: Codable {
    let street1: String
    let street2: String?
    let city: String?
    let country: String?
    let postalcode: String?
    let addressString: String
    let state: String?

    enum CodingKeys: String, CodingKey {
        case street1, street2, city, country, postalcode
        case addressString = "address_string"
        case state
    }
}






