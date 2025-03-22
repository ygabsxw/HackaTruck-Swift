//
//  ContentView.swift
//  Challange03-02
//
//  Created by Turma02-11 on 21/03/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showingAlert = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(.aquaBlue)
                    .ignoresSafeArea()
                VStack {
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                    Spacer()
                    NavigationLink(destination: Modo1View()) {
                        Text("Modo 1")
                        .foregroundColor(.white)
                        .frame(width: 120, height: 80)
                        .background(.pink)
                        .cornerRadius(5)
                    }
                    NavigationLink(destination: Modo2View()) {
                        Text("Modo 2")
                        .foregroundColor(.white)
                        .frame(width: 120, height: 80)
                        .background(.pink)
                        .cornerRadius(5)
                    }
                    .foregroundColor(.white)
                    .frame(width: 120, height: 80)
                    .background(.pink)
                    .cornerRadius(5)
                    Button ("Modo 3") {
                        showingAlert = true
                    }
                    .alert("Essa parte não será implementada", isPresented: $showingAlert) {
                        Button("Voltar") {
                            
                        }
                    }
                    .foregroundColor(.white)
                    .frame(width: 120, height: 80)
                    .background(.pink)
                    .cornerRadius(5)
                    
                    Spacer()
                }
                .padding()
            }
        }
    }
}

#Preview {
    ContentView()
}
