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


// MARK: - LocationDetails
struct LocationDetails: Codable {
    let locationID, name, description: String
    let webURL: String
    let addressObj: AddressObj
    let latitude, longitude, email: String
    let phone: String
    let website: String
    let writeReview: String
    let rankingData: RankingData
    let rating: String
    let ratingImageURL: String
    let numReviews: String
    let reviewRatingCount: [String: String]
    let photoCount: String
    let seeAllPhotos: String
   
  

    enum CodingKeys: String, CodingKey {
        case locationID = "location_id"
        case name, description
        case webURL = "web_url"
        case addressObj = "address_obj"
        case latitude, longitude, email, phone, website
        case writeReview = "write_review"
        case rankingData = "ranking_data"
        case rating
        case ratingImageURL = "rating_image_url"
        case numReviews = "num_reviews"
        case reviewRatingCount = "review_rating_count"
        case photoCount = "photo_count"
        case seeAllPhotos = "see_all_photos"
    }
}


// MARK: - RankingData
struct RankingData: Codable {
    let geoLocationID, rankingString, geoLocationName, rankingOutOf: String
    let ranking: String

    enum CodingKeys: String, CodingKey {
        case geoLocationID = "geo_location_id"
        case rankingString = "ranking_string"
        case geoLocationName = "geo_location_name"
        case rankingOutOf = "ranking_out_of"
        case ranking
    }
}

