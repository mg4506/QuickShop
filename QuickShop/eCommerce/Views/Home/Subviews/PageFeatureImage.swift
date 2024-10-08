
import SwiftUI

struct PageFeatureImage: View {
    var featureImage: String
    
    var body: some View {
        Image(featureImage)
            .resizable()
            .aspectRatio(3 / 2, contentMode: .fit)
    }
}

struct PageFeatureImage_Previews: PreviewProvider {
    static var previews: some View {
        PageFeatureImage(featureImage: "feature2")
    }
}
