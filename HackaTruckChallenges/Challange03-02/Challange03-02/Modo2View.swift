//
//  Modo2View.swift
//  Challange03-02
//
//  Created by Turma02-11 on 21/03/25.
//

import SwiftUI

struct Modo2View: View {
    
    @State public var name: String = ""
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(.aquaBlue)
                    .ignoresSafeArea()
                VStack {
                    Text("Modo 2")
                        .foregroundStyle(.white)
                        .font(.title)
                    Spacer()
                    ZStack {
                        Rectangle()
                            .frame(width: 300, height: 200)
                            .foregroundStyle(.pink)
                            .cornerRadius(8)
                        VStack {
                            TextField("Nome: ",text: $name)
                                .multilineTextAlignment(.center)
                            Text("Bem vindo, \(name)!")
                                .padding(.bottom)
                            NavigationLink(destination: Modo2ResultView(name: name)) {
                                Text("Acessar Tela")
                                    .padding()
                                    .foregroundStyle(.white)
                                    .frame(width: 130, height: 40)
                                    .background(.blue)
                                    .cornerRadius(10)
                            }
                        }
                    }
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    Modo2View()
}
