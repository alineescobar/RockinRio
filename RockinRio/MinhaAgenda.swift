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
        
            Text("Minha agenda")
                .padding(.top, 40)
                .font(.custom("BebasNeue-Regular", size: 20))
                .foregroundColor(.white)
            Text("< 25 de setembro >")
                .foregroundColor(.white)
            ShowRow()
        }
        .background(LinearGradient(
            gradient: Gradient(colors: [Color.init(UIColor(red: 124/255, green: 126/255, blue: 170/255, alpha: 1)), Color.init(UIColor(red: 18/255, green: 6/255, blue: 17/255, alpha: 1))]), startPoint: UnitPoint(x: 0.5, y: 0.01) , endPoint: .bottom
        ))
//        .edgesIgnoringSafeArea(.top)
        .edgesIgnoringSafeArea(.all)
    }
}

struct MinhaAgenda_Previews: PreviewProvider {
    static var previews: some View {
        MinhaAgenda()
    }
}
