import SwiftUI

struct ProductDetailView: View {
    let product: Product

    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                if let thumbnailURL = URL(string: product.thumbnail) {
                    AsyncImage(url: thumbnailURL) { phase in
                        switch phase {
                        case .empty:
                            ProgressView()
                        case .success(let image):
                            image
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(height: 300)
                        case .failure:
                            Image(systemName: "photo")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(height: 300)
                        @unknown default:
                            EmptyView()
                        }
                    }
                }

                Text(product.title)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.top)

                Text("Price: $\(product.price, specifier: "%.2f")")
                    .font(.title2)
                    .padding(.top, 2)
                
                Text(product.description)
                    .font(.body)
                    .padding(.top, 10)
                
                // Add more details if needed
            }
            .padding()
        }
        .navigationTitle("Product Details")
    }
}
