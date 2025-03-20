//
//  ContentView.swift
//  Challenge01-02
//
//  Created by Gabriel Diniz on 19/03/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Image("neymar")
                    .resizable()
                    .scaledToFit()
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .frame(width: 150, height: 150)
                Spacer()
                VStack (spacing: 10) {
                    Text("Neymar")
                        .foregroundStyle(.red)
                    Text("Menino da Vila")
                        .foregroundStyle(.blue)
                    Text("1 Champions e 1 Liberta")
                        .foregroundStyle(.yellow)
                }
                
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
