//
//  PilotView.swift
//  Challenge07
//
//  Created by Turma02-11 on 27/03/25.
//

import SwiftUI

struct PilotView: View {
    
    @State var pilot : F1Pilots?
    
    var body: some View {
        ZStack {
            VStack {
                Spacer()
                AsyncImage(url: URL(string: pilot?.foto_url ?? "")) { image in
                    image.resizable()
                } placeholder: {
                    ProgressView()
                }
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .frame(width: 200, height: 200)
                .scaledToFit()
                .padding()
                Text(pilot?.nome ?? "")
                    .foregroundStyle(.black)
                    .font(.largeTitle)
                    .padding(.bottom)
                HStack {
                    Spacer()
                    Text("Vitorias: \(pilot?.vitorias ?? 0)")
                        .foregroundStyle(.black)
                        .font(.title)
                    Spacer()
                    Text("Podios: \(pilot?.podios ?? 0)")
                        .foregroundStyle(.black)
                        .font(.title)
                    Spacer()
                }
                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    PilotView()
}
