//
//  ShowRow.swift
//  RockinRio
//
//  Created by Aline Osana Escobar on 30/03/21.
//

import SwiftUI

struct ShowRow: View {
    var body: some View {
        VStack{
            VStack{
                HStack {
                    Text("Iron Maiden")
                        .foregroundColor(.white)
                        .frame(alignment: .leading)
                        .padding(.leading, 30)
                    Spacer()
                }
                Image("IronMaiden")
                    .resizable()
                    .scaledToFit()
                    .padding(.leading, 30)
                    .padding(.trailing, 30)
                Spacer()
                
                VStack{
                    HStack{
                        VStack{
                            HStack{
                                Text("Palco mundo")
                                    .foregroundColor(.white)
                                    .frame(alignment: .leading)
                                    .padding(.leading, 30)
                                Spacer()
                            }
                            HStack{
                                Text("25 setembro 2021")
                                    .foregroundColor(.white)
                                    .padding(.leading, 30)
                                    .frame(alignment: .leading)
                                Spacer()
                            }
                            HStack{
                                Text("Horário: 22:00")
                                    .foregroundColor(.white)
                                    .padding(.leading, 30)
                                    .frame(alignment: .leading)
                                Spacer()
                            }
                        }
                        HStack{
                            Image("CoracaoVermelho")
                                .resizable()
                                .frame(width: 25, height: 25,alignment: .trailing)
                                .padding(.trailing, 30)
                                .padding(.top, -30)
                        }
                    }
                    Spacer()
                }
            }
        }
    }
}

struct ShowRow_Previews: PreviewProvider {
    static var previews: some View {
        ShowRow()
    }
}
