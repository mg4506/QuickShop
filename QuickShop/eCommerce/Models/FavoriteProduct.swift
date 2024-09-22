//
//  FavoriteProduct.swift
//  eCommerce
//


import Foundation

struct FavoriteProduct: Identifiable, Codable {
    let id: String
    
    enum CodingKeys: String, CodingKey {
        case id
    }
}
