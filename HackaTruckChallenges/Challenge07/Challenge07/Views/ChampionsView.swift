//
//  ChampionsView.swift
//  Challenge07
//
//  Created by Turma02-11 on 27/03/25.
//

import SwiftUI

struct ChampionsView: View {
    
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        VStack {
            Text("Not Implement Yet")
        }
        .onAppear(){viewModel.fetch()}
    }
}

#Preview {
    ChampionsView()
}
