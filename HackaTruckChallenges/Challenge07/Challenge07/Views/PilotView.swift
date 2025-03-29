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
                HStack {
                    NavigationLink(destination: ChampionsView()) {
                        Image(systemName: "trophy.circle.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 35, height: 35)
                            .foregroundStyle(.realRed)
                    }
                    Spacer()
                    Image("F1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100)
                    Spacer()
                    NavigationLink(destination: TeamView()) {
                        Image(systemName: "car.circle.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 35, height: 35)
                            .foregroundStyle(.realRed)
                    }
                    
                }.padding(.bottom, 50)
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
                    Text("Vitórias: \(pilot?.vitorias ?? 0)")
                        .foregroundStyle(.black)
                        .font(.title)
                    Spacer()
                    Text("Pódios: \(pilot?.podios ?? 0)")
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
