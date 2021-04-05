//
//  SwiftUIView.swift
//  RockinRio
//
//  Created by Camila Prates on 04/04/21.
//

import SwiftUI

struct Detalhes: View {
    let banda: Atracao
    var body: some View {
        VStack {
            VStack{
                Spacer()
                HStack {
                    Image("2logo")
                        .resizable()
                        .frame(width: 50, height: 50, alignment: .leading)
                        .padding(.leading, 300)
                        .padding(.top, -10)
                    Spacer()
                }
                HStack {
                    Text(banda.nomeDaBanda)
                        .font(.custom("BebasNeue-Regular", size: 17))
                        .foregroundColor(.black)
                        .frame(alignment: .trailing)
                        .padding(.top, 10)
                        .padding(.leading, 70)
                    Spacer()
                }
                
                
                Image(banda.nomeDaBanda)
                    .resizable()
                    .frame(width: 280, height: 175)
                    .padding(.leading, 68)
                    .padding(.trailing, 68)
                    .padding(.top, -5)
                Spacer()
                VStack{
                    HStack{
                        VStack{
                            HStack{
                                Text("Palco \(banda.palco)")
                                    .foregroundColor(.black)
                                    .font(.custom("SF pro display", size: 15))
                                    .frame(alignment: .leading)
                                    .padding(.leading, 70)
                                Spacer()
                            }
                            HStack{
                                Text(banda.dataDoShow)
                                    .foregroundColor(.black)
                                    .font(.custom("SF pro display", size: 15))
                                    .padding(.leading, 70)
                                    .frame(alignment: .leading)
                                Spacer()
                            }
                            HStack{
                                Text("Horário: \(banda.horario)")
                                    .foregroundColor(.black)
                                    .font(.custom("SF pro display", size: 15))
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
                    Text(banda.descricao)
                        .foregroundColor(.black)
                        .font(.custom("SF pro display", size: 14))
                        .padding(.leading, 70)
                        .padding(.trailing, 70)
                        .padding(.top, 20)
                        .frame(alignment: .leading)
                    Spacer()
                }
            }
            .padding(.top,20)
            .frame(width:307, height: 800)
            .background(Color.white)
            .cornerRadius(14)
        }
        .padding(.top, 100)
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
        .background(RadialGradient(
            gradient: Gradient(colors: [Color.init(UIColor(red: 124/255, green: 126/255, blue: 170/255, alpha: 1)), Color.init(UIColor(red: 18/255, green: 6/255, blue: 17/255, alpha: 1))]), center: .center, startRadius: 0, endRadius: 350
        ))
        .ignoresSafeArea()
    }
    
}


struct Detalhes_Previews: PreviewProvider {
    static var previews: some View {
        Detalhes(banda: atracoes[0])
    }
}

