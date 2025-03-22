//
//  Modo2ResultView.swift
//  Challange03-02
//
//  Created by Turma02-11 on 21/03/25.
//

import SwiftUI

struct Modo2ResultView: View {
    
    @State public var name: String
    
    var body: some View {
        ZStack {
            Color(.aquaBlue)
                .ignoresSafeArea()
            VStack {
                Text("Modo 2")
                    .foregroundStyle(.white)
                    .font(.title)
                Spacer()
                Text("Volte, \(name)")
                    .foregroundColor(.white)
                    .frame(width: 120, height: 80)
                    .background(.pink)
                    .cornerRadius(5)
                    
                Spacer()
            }
        }
    }
}

#Preview {
    Modo2ResultView(name: "")
}
