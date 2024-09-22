

import SwiftUI

struct CategoriesRowView: View {
    var title: String

    var body: some View {
        Text(title)
            .font(.custom(AppFont.regularFont, size: 20))
            .foregroundColor(RCValues.shared
                .color(forKey: .primary))
            .padding(.vertical, 5)
    }
}

struct CategoriesRowView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            List {
                NavigationLink {
                    //
                } label: {
                    CategoriesRowView(title: "Clothing")
                }
            }
            .listStyle(.inset)
        }
    }
}
