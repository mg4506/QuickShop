//
//  FavoriteProductRepository.swift
//  eCommerce
//
//  Created by Munish Goel on 20/09/2024.
//

import Foundation
import FirebaseFirestore
import FirebaseFirestoreSwift
import Combine

protocol FavoriteProductRepository {
    func userFavoriteProductCollection(userId: String) -> CollectionReference

    func addListenerForFavoriteProducts(userId: String) -> AnyPublisher<[FavoriteProduct], Error>

    func addFavoriteProduct(userId: String, productId: String) async throws

    func removeFavoriteProduct(userId: String, favoriteProductId: String) async throws
}
