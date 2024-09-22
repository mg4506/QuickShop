//
//  NewInProductRepository.swift
//  eCommerce
//
//  Created by Munish Goel on 16/09/2024.
//

import Foundation
import FirebaseFirestore
import FirebaseFirestoreSwift
import Combine

protocol NewInProductRepository {
    var newInsCollection: CollectionReference { get }

    func newInDocument(productId: String) -> DocumentReference

    func uploadNewIn(newIn: NewIn) async throws

    func getNewIn(productId: String) async throws -> NewIn

    func getAllNewIns() async throws -> [NewIn]
}
