//
//  Atracao.swift
//  RockinRio
//
//  Created by Aline Osana Escobar on 31/03/21.
//

import Foundation

struct Atracao: Hashable, Codable {
    var nomeDaBanda: String
    var dataDoShow: String
    var horario: String
    var palco: String
    var descricao: String
    var favorito: Bool
}

let banda01 = Atracao(nomeDaBanda: "Iron Maiden", dataDoShow: "25 setembro 2021", horario: "22:00", palco: "mundo", descricao: "Iron Maiden é uma banda britânica de heavy metal, formada em 1975 pelo baixista Steve Harris, ex-integrante das bandas Gypsy’s Kiss e Smiler. O nome “Iron Maiden”, homônimo de um instrumento de tortura medieval.", favorito: true)

let banda02 = Atracao(nomeDaBanda: "Arctic Monkeys", dataDoShow: "25 setembro 2021", horario: "25 setembro 2021", palco: "sunset", descricao: "Arctic Monkeys é uma banda inglesa", favorito: true)

let atracoes = [banda01, banda02]
