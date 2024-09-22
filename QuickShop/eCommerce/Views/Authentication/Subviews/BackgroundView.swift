//  Created by Munish Goel on 13/09/2024.

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.white, .black, .white]), startPoint: .top, endPoint: .bottom)
            RCValues.shared.color(forKey: .secondary)
                .opacity(0.7)
        }
        .ignoresSafeArea()
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView()
    }
}
