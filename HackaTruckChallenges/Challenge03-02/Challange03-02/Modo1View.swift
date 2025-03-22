//
//  Modo1View.swift
//  Challange03-02
//
//  Created by Turma02-11 on 21/03/25.
//

import SwiftUI

struct Modo1View: View {
    var body: some View {
        ZStack {
            Color(.aquaBlue)
                .ignoresSafeArea()
            VStack {
                Text("Modo 1")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundStyle(.white)
                Spacer()
                ZStack {
                    Rectangle()
                        .frame(width: 280, height: 200)
                        .foregroundStyle(.pink)
                        .cornerRadius(8)
                    VStack {
                        Text("Nome: Gabriel")
                            .foregroundStyle(.white)
                        Text("Sobrenome: Diniz")
                            .foregroundStyle(.white)

                    
                    }
                }
                Spacer()
            }
        }
    }
}

#Preview {
    Modo1View()
}
