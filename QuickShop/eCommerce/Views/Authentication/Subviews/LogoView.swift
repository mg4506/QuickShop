//
//  LogoView.swift
//  eCommerce
//
//  Created by Munish Goel on 13/09/2024.


import SwiftUI

struct LogoView: View {
    var body: some View {
        Image("logo")
            .resizable()
            .scaledToFit()
            .frame(maxHeight: 250)
            .clipShape(Circle())
            .padding(.bottom)
    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
    }
}
