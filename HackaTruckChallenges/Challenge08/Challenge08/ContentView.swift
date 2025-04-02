//
//  ContentView.swift
//  Challenge08
//
//  Created by Turma02-11 on 01/04/25.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.white, .blue, .blue]), startPoint: .top, endPoint: .bottom)
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Image(systemName: "drop.fill")
                    .font(.largeTitle)
                    .padding(.top)
                Text("Log Umidade do Terreno")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                ScrollView {
                    Spacer()
                    ForEach(viewModel.umidades, id:\.self) { u in
                        Text("Umidade: \(u.umidade)%")
                            .padding()
                    }
                }
            }
            .padding()
            .onAppear(){viewModel.fetch()}
        }
    }
}

#Preview {
    ContentView()
}
