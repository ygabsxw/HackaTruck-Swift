//
//  ChampionsView.swift
//  Challenge07
//
//  Created by Turma02-11 on 27/03/25.
//

import SwiftUI

struct ChampionsView: View {
    
    @StateObject var viewModel = ViewModel()
    @State var firstWinner: F1Pilots?
    @State var secondWinner: F1Pilots?
    @State var thirdWinner: F1Pilots?
    @State var qtdWin: Int = 0
    
    var body: some View {
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
            ForEach(viewModel.pilots, id:\.self) { champion in
                
                
            }
            VStack {
                VStack{
                   
                    HStack (spacing: 0) {
                        Rectangle()
                         .frame(width: 100, height: 110)
                         .padding(.top, 30)
                         .foregroundStyle(.realRed)
                        Rectangle()
                         .frame(width: 100, height: 140)
                         .foregroundStyle(.realRed)
                        Rectangle()
                         .frame(width: 100, height: 90)
                         .padding(.top, 50)
                         .foregroundStyle(.realRed)
                    }
                }
                HStack {
                    Spacer()
                    Text("2˚")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .foregroundStyle(.gray)
                    Image(systemName: "medal")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 25, height: 25)
                        .foregroundStyle(.gray)
                    Spacer()
                    Text("1˚")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .foregroundStyle(.yellow)
                    Image(systemName: "trophy")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 25, height: 25)
                        .foregroundStyle(.yellow)
                    Spacer()
                    Text("3˚")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .foregroundStyle(.brown)
                    Image(systemName: "medal.star")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 25, height: 25)
                        .foregroundStyle(.brown)
                    Spacer()
                }
            }
            Spacer()
        }
        .padding(.horizontal).padding(.top)
        .onAppear(){viewModel.fetch()}
    }
}

#Preview {
    ChampionsView()
}
