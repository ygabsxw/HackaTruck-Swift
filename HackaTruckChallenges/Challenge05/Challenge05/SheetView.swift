//
//  SheetView.swift
//  Challenge05
//
//  Created by Turma02-11 on 25/03/25.
//

import SwiftUI

struct SheetView: View {
    
    @Binding var l : Location
    
    var body: some View {
        ZStack {
            Color(.gold)
                .ignoresSafeArea()
            VStack {
                AsyncImage(url: URL(string: l.photo)) { image in
                    image.resizable()
                } placeholder: {
                    ProgressView()
                }
                .frame(width: 250, height: 200)
                .scaledToFit()
                .padding()
                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                Text(l.name)
                    .font(.title)
                Text(l.description)
                    .padding(30)
                    .background(.brown)
                    .padding(30)
            }
        }
    }
}

#Preview {
    SheetView(l : .constant(Location(name: "teste", photo:"https://aem-all.accor.com/content/dam/all/hubs/americas/latam/generic-images/all-magazine/o-que-fazer-em-belo-horizonte-8-destinos-incriveis-guia-2024-2.jpg", description:"teste", latitude: 0, longitude: 0) ))
}
