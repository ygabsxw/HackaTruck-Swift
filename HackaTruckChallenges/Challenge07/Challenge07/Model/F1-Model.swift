//
//  F1-Model.swift
//  Challenge07
//
//  Created by Turma02-11 on 27/03/25.
//

import Foundation

struct F1Pilots: Decodable, Hashable {
    let nome: String
    let vitorias: Int
    let podios: Int
    let foto_url: String
    let equipes: [String]?
    let equipes_atuais: [String]?
    let aposentado: Bool
}
