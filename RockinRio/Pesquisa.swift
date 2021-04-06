//
//  Pesquisa.swift
//  RockinRio
//
//  Created by Aline Osana Escobar on 05/04/21.
//

import SwiftUI

struct Pesquisa: View {
    @State private var searchText = ""
    
    var body: some View {
        VStack{
            SearchBar(text: $searchText)
                .padding(.top, 80)
                .background(Color.white)
            Spacer()
                
        }.background(Color.white)
        .ignoresSafeArea()
    }
}


struct Pesquisa_Previews: PreviewProvider {
    static var previews: some View {
        Pesquisa()
    }
}
