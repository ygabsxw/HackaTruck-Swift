//
//  ContentView.swift
//  Challenge01-03
//
//  Created by Gabriel Diniz on 19/03/25.
//

import SwiftUI

struct ContentView: View {
    @State var nome: String = ""
    @State var showingAlert = false
    var body: some View {
        ZStack {
            Image("caminhaofundo")
                .resizable()
                .blur(radius: 5)
            VStack {
                Text("Bem vindo, \(nome)!")
                TextField(
                        "Nome",
                        text: $nome
                    )
                Spacer()
                Image("logo-topo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300)
                Spacer()
                Button("Entrar") {
                    showingAlert = true
                }
                .alert("Você irá iniciar o desafio da aula agora.", isPresented: $showingAlert) {
                Button("Vamos lá!") { }
                }
                

            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
