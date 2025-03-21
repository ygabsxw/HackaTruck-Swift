//
//  AzulView.swift
//  Challenge03-01
//
//  Created by Gabriel Diniz on 21/03/25.
//

import SwiftUI

struct AzulView: View {
    var body: some View {
        ZStack {
            Color(.blue)
                .edgesIgnoringSafeArea(.top)
            VStack {
                Image(systemName: "paintbrush.pointed")
                    .resizable()
                    .scaledToFit()
                    .foregroundStyle(.blue)
                    .padding(40)
                    .background(.black)
                    .clipShape(Circle())
            }
        }
    }
}

#Preview {
    AzulView()
}
