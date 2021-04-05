//
//  ShowRow.swift
//  RockinRio
//
//  Created by Aline Osana Escobar on 30/03/21.
//

import SwiftUI

struct ShowRow: View {
    let banda: Atracao
    
    var body: some View {
        ScrollView(.vertical) {
            VStack{
                VStack{
                    HStack {
                        Text(banda.nomeDaBanda)
                            .foregroundColor(.white)
                            .font(.custom("BebasNeue-Regular", size: 17))
                            .frame(alignment: .leading)
                            .padding(.leading, 68)
                            .padding(.bottom, 9)
                        Spacer()
                    }
                    Image(banda.nomeDaBanda)
                        .resizable()
                        .frame(width: 280, height: 175)
                        .padding(.leading, 68)
                        .padding(.trailing, 68)
                    Spacer()
                    VStack{
                        HStack{
                            VStack{
                                HStack{
                                    Text("Palco \(banda.palco)")
                                        .foregroundColor(.white)
                                        .font(.custom("BebasNeue-Regular", size: 17))
                                        .frame(alignment: .leading)
                                        .padding(.leading, 68)
                                    Spacer()
                                }
                                HStack{
                                    Text(banda.dataDoShow)
                                        .foregroundColor(.white)
                                        .font(.custom("BebasNeue-Regular", size: 17))
                                        .padding(.leading, 68)
                                        .frame(alignment: .leading)
                                    Spacer()
                                }
                                HStack{
                                    Text("Horário: \(banda.horario)")
                                        .foregroundColor(.white)
                                        .font(.custom("BebasNeue-Regular", size: 17))
                                        .padding(.leading, 70)
                                        .frame(alignment: .leading)
                                    Spacer()
                                }
                            }
                            HStack{
                                Image("CoracaoVermelho")
                                    .resizable()
                                    .frame(width: 17, height: 15,alignment: .trailing)
                                    .padding(.trailing, 80)
                                    .padding(.top, -25)
                            }
                        }
                        Spacer()
                    }
                }
            }
        }
    }
}

struct ShowRow_Previews: PreviewProvider {
    static var previews: some View {
        ShowRow(banda: atracoes[0])
    }
}
