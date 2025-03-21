//
//  ContentView.swift
//  Challenge02
//
//  Created by Gabriel Diniz on 20/03/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var distance: Float = 0
    @State private var time: Float = 0
    @State private var calcular: Bool = false
    @State private var bg: Color = Color(.darkGray)
    @State private var kmH: Float = 0
    @State private var animalImage: String = "interroga"
    
    var body: some View {
        ZStack {
            Color(bg)
                .ignoresSafeArea()
            VStack (alignment: .center) {
                Text("Digite a distância (km):")
                TextField("Digite aqui:", value: $distance, format:.number)
                    .background()
                    .frame(width: 190)
                    .keyboardType(.decimalPad)
                    .textContentType(.oneTimeCode)
                    .cornerRadius(10)
                    .multilineTextAlignment(.center)
                Text("Digite o tempo (h):")
                TextField("Digite aqui:", value: $time, format:.number)
                    .background()
                    .frame(width: 190)
                    .keyboardType(.decimalPad)
                    .textContentType(.oneTimeCode)
                    .cornerRadius(10)
                    .multilineTextAlignment(.center)
                
                Button("Calcular") {
                    kmH = distance / time
                    if kmH < 10 {
                        bg = .verdeclaro
                        animalImage = "storm"
                    } else if kmH >= 10 && kmH < 30 {
                        bg = .azulclaro
                        animalImage = "mcmissel"
                    } else if kmH >= 30 && kmH < 70 {
                        bg = .laranjaclaro
                        animalImage = "francesco"
                    } else if kmH >= 70 && kmH < 90 {
                        bg = .amareloclaro
                        animalImage = "mcqueen"
                    } else {
                        bg = .vermelhoclaro
                        animalImage = "mate"
                    }
                    }
                    .foregroundStyle(.orange)
                    .frame(width: 90, height: 40)
                    .background(.black)
                    .cornerRadius(10)
                
                Spacer(minLength: 40)
                Text("\(kmH.formatted()) km/h")
                    .font(.largeTitle)
                Image(animalImage)
                    .resizable()
                    .scaledToFit()
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                Spacer()
                ZStack {
                    Rectangle()
                        .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
                        .frame(width: 280, height: 160)
                    HStack {
                        VStack {
                            Text("Storm")
                                .foregroundStyle(.white)
                            Text("McMissel")
                                .foregroundStyle(.white)
                            Text("Francesco")
                                .foregroundStyle(.white)
                            Text("McQueen")
                                .foregroundStyle(.white)
                            Text("Mate Missel")
                                .foregroundStyle(.white)
                        }
                        VStack {
                            Text("(0 - 9.9km/h)")
                                .foregroundStyle(.white)
                            Text("(10 - 29.9km/h)")
                                .foregroundStyle(.white)
                            Text("(30 - 69.9km/h)")
                                .foregroundStyle(.white)
                            Text("(70 - 89.9km/h)")
                                .foregroundStyle(.white)
                            Text("(90 - 130km/h)")
                                .foregroundStyle(.white)
                        }
                        VStack {
                            Circle()
                                .foregroundStyle(.verdeclaro)
                                .frame(width: 15)
                            Circle()
                                .foregroundStyle(.azulclaro)
                                .frame(width: 15)
                            Circle()
                                .foregroundStyle(.laranjaclaro)
                                .frame(width: 15)
                            Circle()
                                .foregroundStyle(.amareloclaro)
                                .frame(width: 15)
                            Circle()
                                .foregroundStyle(.vermelhoclaro)
                                .frame(width: 15)
                        }
                    }
                }
                
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
