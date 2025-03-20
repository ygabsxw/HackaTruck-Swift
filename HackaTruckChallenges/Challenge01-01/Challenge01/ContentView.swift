//
//  ContentView.swift
//  Challenge01-01
//
//  Created by Gabriel Diniz on 19/03/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack () {
            HStack {
                Rectangle()
                    .foregroundStyle(.red)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                Spacer()
                Rectangle()
                    .foregroundStyle(.blue)
                    .frame(width: 100, height: 100)
            }
            HStack {
                VStack {
                    Spacer()
                    Rectangle()
                        .foregroundStyle(.green)
                        .frame(width: 100, height: 100)
                }
                Spacer()
                VStack {
                    Spacer()
                    Rectangle()
                        .foregroundStyle(.yellow)
                        .frame(width: 100, height: 100)
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
