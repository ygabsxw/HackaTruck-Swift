//
//  CaracterView.swift
//  Challenge06
//
//  Created by Turma02-11 on 26/03/25.
//

import SwiftUI

struct CaracterView: View {
    
    @State var caracter : HaPo?
    
    var body: some View {
        ZStack {
            Color(.redBlack)
                .ignoresSafeArea()
            VStack {
                AsyncImage(url: URL(string: caracter?.image ?? " ")) { image in
                    image.resizable()
                } placeholder: {
                    ProgressView()
                }
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .frame(width: 200, height: 200)
                .scaledToFit()
                .padding()
                Text(caracter?.name ?? " ")
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                Text("Real actor: \(caracter?.actor ?? "")")
                    .foregroundStyle(.white)
                    .font(.title2)
                ScrollView (.horizontal) {
                    HStack {
                        ForEach(caracter?.alternate_names ?? [], id: \.self) { names in
                            Text("\(names)")
                                .foregroundStyle(.white)
                                .font(.title)
                                .padding()
                            Text(" -")
                                .foregroundStyle(.white)
                                .font(.title)
                        }
                    }
                }
                Text("Gender: \(caracter?.gender ?? "")")
                    .foregroundStyle(.white)
                    .font(.title2)
                Text("House: \(caracter?.house ?? "")")
                    .foregroundStyle(.white)
                    .font(.title2)
                Text("Wand: ")
                    .bold()
                    .foregroundStyle(.white)
                    .font(.title)
                    .padding(.top)
                Text("Wood: \(caracter?.wand.wood ?? "")")
                    .foregroundStyle(.white)
                    .font(.title2)
                Text("Core: \(caracter?.wand.core ?? "")")
                    .foregroundStyle(.white)
                    .font(.title2)
                Text("Lenght: \(caracter?.wand.length ?? 0)")
                    .foregroundStyle(.white)
                    .font(.title2)
            }
        }
    }
}

#Preview {
    CaracterView()
}
