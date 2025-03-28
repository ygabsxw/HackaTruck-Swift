//
//  ContentView.swift
//  Challenge07
//
//  Created by Turma02-11 on 27/03/25.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        NavigationStack {
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
                            .frame(width: 100, height: 100)
                        Spacer()
                        NavigationLink(destination: ChampionsView()) {
                            Image(systemName: "car.circle.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 35, height: 35)
                                .foregroundStyle(.realRed)
                        }
                        
                    }
                    Spacer()
                    ScrollView {
                        ForEach(viewModel.pilots, id:\.self) { pilot in
                            NavigationLink(destination: PilotView(pilot : pilot)) {
                                VStack {
                                    HStack {
                                        AsyncImage(url: URL(string: pilot.foto_url)) { image in
                                            image.resizable()
                                        } placeholder: {
                                            ProgressView()
                                        }
                                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                        .scaledToFit()
                                        .frame(width: 130, height: 130)
                                        .padding()
                                        Text(pilot.nome)
                                            .foregroundStyle(.black)
                                            .font(.headline)
                                        Spacer()
                                    }
                                }
                            }
                        }
                    }
                }
                .padding()
                .onAppear(){viewModel.fetch()}
            }
        }.tint(.red)
    }
}

#Preview {
    ContentView()
}
