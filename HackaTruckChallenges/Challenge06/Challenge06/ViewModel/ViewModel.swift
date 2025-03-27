//
//  ViewModel.swift
//  Challenge06
//
//  Created by Turma02-11 on 26/03/25.
//

import Foundation

class ViewModel: ObservableObject {
    
    @Published var caracters: [HaPo] = []
    
    func fetch() {
        guard let url = URL(string: "https://hp-api.onrender.com/api/characters/house/gryffindor") else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, _, error
            in
            guard let data = data, error == nil else {
                return
            }
            
            do {
                let parsed = try JSONDecoder().decode([HaPo].self, from: data)
                
                DispatchQueue.main.async {
                    self?.caracters = parsed
                }
            } catch {
                print(error)
            }
        }
        task.resume()
    }
}
