//
//  OrderRepository.swift
//  eCommerce
//
//  Created by Munish Goel on 20/09/2024.
//

import Foundation
import FirebaseFirestore
import FirebaseFirestoreSwift
import Combine

protocol OrderRepository {
    func userOrdersCollection(userId: String) -> CollectionReference

    func userOrderItemsCollection(userId: String, documentId: String) -> CollectionReference

    func userOrderShippingAddressCollection(userId: String, documentId: String) -> CollectionReference

    func addListenerForOrders(userId: String) -> AnyPublisher<[Order], Error>

    func addOrder(userId: String, cart: Cart, cartItems: [CartItem], shippingAddress: ShippingAddress) async throws -> String

    func getAllOrderItemsForOrder(userId: String, orderId: String) async throws -> [OrderItem]

    func getShippingAddressForOrder(userId: String, orderId: String) async throws -> ShippingAddress
}
