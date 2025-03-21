//
//  RosaView.swift
//  Challenge03-01
//
//  Created by Gabriel Diniz on 21/03/25.
//

import SwiftUI

struct RosaView: View {
    var body: some View {
        ZStack {
            Color(.systemPink)
                .edgesIgnoringSafeArea(.top)
            VStack {
                Image(systemName: "paintbrush")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.pink)
                    .padding(40)
                    .background(.black)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            }
        }
    }
}

#Preview {
    RosaView()
}
