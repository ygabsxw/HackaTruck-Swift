//
//  CinzaView.swift
//  Challenge03-01
//
//  Created by Gabriel Diniz on 21/03/25.
//

import SwiftUI

struct CinzaView: View {
    var body: some View {
        ZStack {
            Color(.gray)
                .edgesIgnoringSafeArea(.top)
            VStack {
                Image(systemName: "paintpalette")
                    .resizable()
                    .scaledToFit()
                    .foregroundStyle(.gray)
                    .padding(40)
                    .background(.black)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            }
        }
    }
}

#Preview {
    CinzaView()
}
