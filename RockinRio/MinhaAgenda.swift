//
//  MinhaAgenda.swift
//  RockinRio
//
//  Created by Aline Osana Escobar on 30/03/21.
//

import SwiftUI

struct MinhaAgenda: View {
    @State var bandasExibidas: [Atracao]?
    
    var body: some View {
        VStack{
            Spacer()
            HStack {
                Image("2logo")
                    .resizable()
                    .frame(width: 50, height: 50, alignment: .leading)
                    .padding(.leading, 48)
                    .padding(.top, 50)
                Spacer()
            }
            
            Text("Minha agenda")
                .font(.custom("BebasNeue-Regular", size: 20))
                .foregroundColor(.white)
                .padding(.top, 10)
            HStack{
                Button{
                    bandasExibidas = atracoes.filter( {$0.dataDoShow=="25 setembro 2021"} )

                } label: {
                    Text("<")
                        .foregroundColor(.white)
                        .padding(.top)
                }
                
                Text(bandasExibidas?[0].dataDoShow ?? "25 setembro 2021")
                    .font(.custom("BebasNeue-Regular", size: 17))
                    .foregroundColor(.white)
                    .padding(.top, 20)
                
                Button{
                    bandasExibidas = atracoes.filter( {$0.dataDoShow=="26 setembro 2021"} )
                    
                    if (bandasExibidas?.count ?? 0 <= 0) {
                        bandasExibidas = atracoes
                    }
                } label: {
                    Text(">")
                        .foregroundColor(.white)
                        .padding(.top)
                    
                }
            }
            
            ShowRow(bandas: bandasExibidas ?? atracoes)
        }
        .ignoresSafeArea()
    }
}

struct MinhaAgenda_Previews: PreviewProvider {
    static var previews: some View {
        MinhaAgenda()
    }
}
