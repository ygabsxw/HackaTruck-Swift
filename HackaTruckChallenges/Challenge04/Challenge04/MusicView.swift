//
//  MusicView.swift
//  Challenge04
//
//  Created by Turma02-11 on 24/03/25.
//

import SwiftUI

struct MusicView: View {
    
    @State var musica : Song = Song(id: 0, name:"", artist: "", capa: "")
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, .black]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Spacer()
                AsyncImage(url: URL(string: musica.capa)) { image in
                    image.resizable()
                } placeholder: {
                    ProgressView()
                }
                .frame(width: 200, height: 200)
                Text(musica.name)
                    .foregroundStyle(.white)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Text(musica.artist)
                    .foregroundStyle(.white)
                Spacer()
                HStack {
                    Image(systemName: "shuffle")
                        .foregroundStyle(.white)
                        .font(.system(size: 30))
                    Spacer()
                    Image(systemName: "backward.end.fill")
                        .foregroundStyle(.white)
                        .font(.system(size: 30))
                    Spacer()
                    Image(systemName: "play.fill")
                        .foregroundStyle(.white)
                        .font(.system(size: 50))
                    Spacer()
                    Image(systemName: "forward.end.fill")
                        .foregroundStyle(.white)
                        .font(.system(size: 30))
                    Spacer()
                    Image(systemName: "repeat")
                        .foregroundStyle(.white)
                        .font(.system(size: 30))
                }
                Spacer()
            }.padding()
        }
    }
}

#Preview {
    MusicView()
}
