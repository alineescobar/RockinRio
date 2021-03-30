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
            Text("Minha agenda")
                .foregroundColor(.white)
            Text("< 25 de setembro >")
                .foregroundColor(.white)
            ShowRow()

        }
        .frame(width: .none, height: .infinity)
        .ignoresSafeArea()
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct MinhaAgenda_Previews: PreviewProvider {
    static var previews: some View {
        MinhaAgenda()
    }
}
