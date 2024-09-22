//
//  CartItem.swift
//  eCommerce
//


import Foundation

struct CartItem: Identifiable, Codable {
    let id: String
    let name: String
    let brand: String
    let size: String
    let price: Double
    let discountPercent: Double
    let quantity: Int
    let colorName: String
    let imageUrl: String
    let dateAdded: Date

    enum CodingKeys: String, CodingKey {
        case id
        case name
        case brand
        case size
        case price
        case discountPercent
        case quantity
        case colorName
        case imageUrl
        case dateAdded
    }
}
