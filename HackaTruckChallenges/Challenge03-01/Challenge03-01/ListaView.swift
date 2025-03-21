//
//  ListaView.swift
//  Challenge03-01
//
//  Created by Gabriel Diniz on 21/03/25.
//

import SwiftUI

struct ListaView: View {
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    HStack {
                        Text("Paint brush")
                        Spacer()
                        Image(systemName: "paintbrush")
                    }
                    HStack {
                        Text("Paint brush pointed")
                        Spacer()
                        Image(systemName: "paintbrush.pointed")
                    }
                    HStack {
                        Text("Paint palette")
                        Spacer()
                        Image(systemName: "paintpalette")
                    }
                }
            }
            .navigationTitle("Lista")
        }
    }
}

#Preview {
    ListaView()
}
