//
//  F1-ViewModel.swift
//  Challenge07
//
//  Created by Turma02-11 on 27/03/25.
//

import Foundation

class ViewModel: ObservableObject {
    
    @Published var pilots: [F1Pilots] = []
    
    func fetch() {
        guard let url = URL(string: "http://127.0.0.1:1880/get") else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, _, error
            in
            guard let data = data, error == nil else {
                return
            }
            
            do {
                let parsed = try JSONDecoder().decode([F1Pilots].self, from: data)
                
                DispatchQueue.main.async {
                    self?.pilots = parsed
                }
            } catch {
                print(error)
            }
        }
        task.resume()
    }
}
