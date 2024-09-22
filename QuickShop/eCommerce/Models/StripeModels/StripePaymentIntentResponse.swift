//
//  StripePaymentIntentResponse.swift
//  eCommerce
//
//  Created by Munish Goel on 20/09/2024.
//

import Foundation

struct StripePaymentIntentResponse: Decodable {
    let customer: String
    let ephemeralKey: String
    let paymentIntent: String
    let publishableKey: String
}
