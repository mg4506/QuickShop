import Foundation
import Combine

class ProductViewModel: ObservableObject {
    @Published var products: [Product] = []

        func fetchProducts() {
        guard let url = URL(string: "https://dummyjson.com/products") else {
            print("Invalid URL")
            return
        }

        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = "GET"


        let task = URLSession.shared.dataTask(with: urlRequest) { [weak self] data, _, error in
            guard let data = data, error == nil else {
                print("Error fetching data: \(String(describing: error))")
                return
            }
            do {
                let jsonDecoder = JSONDecoder()
                let productResponse = try jsonDecoder.decode(ProductResponse.self, from: data)
                DispatchQueue.main.async {
                    self?.products = productResponse.products
                    print("Fetched and decoded data: \(productResponse.products)")
                }
            } catch {
                print("Error decoding data: \(error)")
            }
        }
        task.resume()
    }
}
