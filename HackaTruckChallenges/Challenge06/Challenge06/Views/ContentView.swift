//
//  ContentView.swift
//  Challenge06
//
//  Created by Turma02-11 on 26/03/25.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(.redBlack)
                    .ignoresSafeArea()
                VStack {
                    ZStack {
                        Image("comunal")
                            .opacity(0.8)
                            .ignoresSafeArea()
                            .frame(width: 100, height: 42)
                    }
                    Spacer()
                }
                VStack {
                    ZStack {
                        Image("Gryffindor-Logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 300, height: 200)
                    }
                    Spacer()
                    
                    ScrollView {
                        VStack {
                            ForEach(viewModel.caracters) { c in
                                NavigationLink(destination: CaracterView(caracter : c)) {
                                    VStack {
                                        HStack {
                                            AsyncImage(url: URL(string: c.image ?? " ")) { image in
                                                image.resizable()
                                            } placeholder: {
                                                ProgressView()
                                            }
                                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                            .frame(width: 130, height: 130)
                                            .scaledToFit()
                                            .padding()
                                            Text(c.name ?? " ")
                                                .foregroundStyle(.white)
                                                .font(.headline)
                                            Spacer()
                                        }
                                    }
                                }
                            }
                        }
                        .onAppear() {
                            viewModel.fetch()
                        }
                        .padding()
                    }
                }
            }
        }.tint(.white)
    }
}

#Preview {
    ContentView()
}
