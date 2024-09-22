
import Foundation

struct StripeCustomerRequest: Encodable {
    let customerId: String
    let fullName: String
    let email: String
}
