//
//  Discount.swift
//  eCommerce
//


import Foundation

struct Discount: Identifiable, Codable {
    let id: String
    let discountPercent: Double

    enum CodingKeys: CodingKey {
        case id
        case discountPercent
    }
}
