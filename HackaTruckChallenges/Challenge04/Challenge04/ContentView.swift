//
//  ContentView.swift
//  Challenge04
//
//  Created by Turma02-11 on 24/03/25.
//

import SwiftUI

struct Song : Identifiable {
    var id : Int
    var name : String
    var artist : String
    var capa : String
}

var arrayMusicas = [
    Song(id: 1, name: "Mockingbird", artist: "Eminem", capa: "https://i.pinimg.com/736x/89/42/5d/89425dcc71589aceca506d8c9186b505.jpg"),
    Song(id: 2, name: "Triplex", artist: "Matheus & Kauan e Matheus Fernandes", capa: "https://cdn-images.dzcdn.net/images/cover/7ce0e3e97c80e13f309ff32c41c6748c/500x500.jpg"),
    Song(id: 3, name: "Não Recomendo", artist: "Matheus & Kauan", capa: "https://cdn-images.dzcdn.net/images/cover/c42f957bb3a289be8117e5282d8506f9/0x1900-000000-80-0-0.jpg"),
    Song(id: 4, name: "365 Dias (Vida Mansa)", artist: "MC Magal, MC Marks e MC Ryan SP", capa: "https://cdn-images.dzcdn.net/images/cover/5ccbc74854f9ffb551d36850ff725411/0x1900-000000-80-0-0.jpg"),
    Song(id: 5, name: "Me Amar Amanhã", artist: "Matheus & Kauan", capa: "https://cdn-images.dzcdn.net/images/cover/36d0205b5ffc306e4f70ee0641f639c3/1900x1900-000000-80-0-0.jpg"),
    Song(id: 6, name: "Mó Fita", artist: "MC Tuto", capa: "https://cdn-images.dzcdn.net/images/cover/6757fd5765ce7443edb2151cd2022e50/0x1900-000000-80-0-0.jpg"),
    Song(id: 7, name: "Move", artist: "Adam Port, Stryv, Camila Cabello", capa: "https://i.discogs.com/y9qSKxeRu1WINub22yzUR0mO_uv2p-I_rjC7vUThnTM/rs:fit/g:sm/q:40/h:300/w:300/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTMxNDg2/ODA3LTE3MjM3Mzg1/NzUtNjk1My5qcGVn.jpeg")
]

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [.blue, .black]), startPoint: .top, endPoint: .bottom)
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                ScrollView {
                    Image("capa")
                        .resizable()
                        .frame(width: 200, height: 200)
                        .scaledToFit()
                        .padding()
                    VStack (alignment: .leading) {
                        Text("HackaFM")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .foregroundStyle(.white)
                        HStack {
                            Image("capa")
                                .resizable()
                                .frame(width: 30, height: 30)
                                .scaledToFit()
                            Text("HackaSong")
                                .foregroundStyle(.white)
                        }
                        ForEach(arrayMusicas) { musica in
                            NavigationLink(destination: MusicView(musica: musica)) {
                                HStack {
                                    AsyncImage(url: URL(string: musica.capa)) { image in
                                        image.resizable()
                                    } placeholder: {
                                        ProgressView()
                                    }
                                    .frame(width: 50, height: 50)
                                    VStack (alignment: .leading) {
                                        Text(musica.name)
                                            .foregroundStyle(.white)
                                        Text(musica.artist)
                                            .foregroundStyle(.white)
                                            .font(.caption)
                                    }
                                    Spacer()
                                    Image(systemName: "ellipsis")
                                        .foregroundStyle(.white)
                                }.padding(.bottom, 3)
                            }
                        }
                    }
                    ScrollView(.horizontal) {
                        VStack (alignment: .leading) {
                            Text("Sugerido")
                                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                .foregroundStyle(.white)
                                .padding()
                            HStack {
                                VStack {
                                    Image("capa")
                                        .resizable()
                                        .frame(width: 160, height: 160)
                                    Text("1 - HackaFM")
                                        .foregroundStyle(.white)
                                }
                                Spacer()
                                VStack {
                                    Image("cyber")
                                        .resizable()
                                        .frame(width: 160, height: 160)
                                    Text("2 - CyberPunk")
                                        .foregroundStyle(.white)
                                }
                                Spacer()
                                VStack {
                                    Image("vapor")
                                        .resizable()
                                        .frame(width: 160, height: 160)
                                    Text("3 - VaporWave")
                                        .foregroundStyle(.white)
                                }
                            }
                        }
                    }
                }.padding()
            }
        }.tint(.white)
    }
}

#Preview {
    ContentView()
}
