

import Foundation

struct StripePaymentIntentRequest: Encodable {
    let customerId: String
    let totalAmount: Double
}
