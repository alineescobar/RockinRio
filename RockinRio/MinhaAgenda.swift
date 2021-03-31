//
//  MinhaAgenda.swift
//  RockinRio
//
//  Created by Aline Osana Escobar on 30/03/21.
//

import SwiftUI

struct MinhaAgenda: View {
    
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
                    
                } label: {
                    Text("<")
                        .foregroundColor(.white)
                        .padding(.top)
                }
                
                Text("25 de setembro")
                    .font(.custom("BebasNeue-Regular", size: 17))
                    .foregroundColor(.white)
                    .padding(.top, 20)
                
                Button{
                    
                } label: {
                    Text(">")
                        .foregroundColor(.white)
                        .padding(.top)
                    
                }
            }
            ShowRow()
        }
        .ignoresSafeArea()
    }
}

struct MinhaAgenda_Previews: PreviewProvider {
    static var previews: some View {
        MinhaAgenda()
    }
}
