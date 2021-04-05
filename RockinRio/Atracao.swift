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

let banda02 = Atracao(nomeDaBanda: "Arctic Monkeys", dataDoShow: "25 setembro", horario: "20:15", palco:"sunset",  descricao:"Arctic Monkeys é uma banda britânica de rock formada em 2002 nos subúrbios da cidade de Sheffield, na Inglaterra. O grupo é formado por Alex Turner, Matt Helders, Jamie Cook e Nick O'Malley." , favorito: false)

let banda03 = Atracao(nomeDaBanda: "Metallica", dataDoShow: "26 setembro", horario: "22:15", palco:"mundo",  descricao:"Metallica é uma banda norte-americana de heavy metal originária de Los Angeles, mas com base em San Francisco. O seu repertório inclui tempos rápidos, pesados, melódicos, instrumentais e musicalidade agressiva, a qual os colocou no lugar de pioneiros do thrash metal." , favorito: false)

let banda04 = Atracao(nomeDaBanda: "Red Hot Chili Pepper", dataDoShow: "25 setembro", horario: "22:00", palco:"sunset",  descricao:"Red Hot Chili Peppers é uma banda de rock dos Estados Unidos formada em Los Angeles, Califórnia, em 13 de fevereiro de 1983, considerada uma das maiores bandas da história do rock." , favorito: false)

let banda05 = Atracao(nomeDaBanda: "Foo Fighters", dataDoShow: "26 de Setembro", horario: "20:30", palco:"sunset",  descricao:"Foo Fighters é uma banda de rock dos Estados Unidos formada pelos ex-Nirvana Dave Grohl em 1994. Seu nome é uma referência ao termo \"foo fighter\", usado por aviadores na Segunda Guerra Mundial para descrever fenômenos aéreos misteriosos, considerados OVNIs." , favorito: false)

let banda06 = Atracao(nomeDaBanda: "Katy Perry", dataDoShow: "25 setembro", horario: "23:30", palco:"mundo",  descricao:"Katy Perry é uma cantora, compositora e atriz norte-americana. Seu estilo musical é o pop-rock. A música \"I Kissed a Girl\", ficou na primeira posição das paradas musicais da Austrália, Canadá, Estados Unidos, Nova Zelândia e Reino Unido, tornando-o o primeiro hit de sua carreira." , favorito: false)


let atracoes = [banda01, banda02, banda03, banda04, banda05, banda06]
