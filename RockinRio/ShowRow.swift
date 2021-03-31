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
                        .font(.custom("BebasNeue-Regular", size: 17))
                        .frame(alignment: .leading)
                        .padding(.leading, 68)
                        .padding(.bottom, 9)
                    Spacer()
                }
                Image("IronMaiden")
                    .resizable()
                    .scaledToFit()
                    .padding(.leading, 68)
                    .padding(.trailing, 68)

                Spacer()
                
                VStack{
                    HStack{
                        VStack{
                            HStack{
                                Text("Palco mundo")
                                    .foregroundColor(.white)
                                    .font(.custom("BebasNeue-Regular", size: 17))
                                    .frame(alignment: .leading)
                                    .padding(.leading, 68)
                                Spacer()
                            }
                            HStack{
                                Text("25 setembro 2021")
                                    .foregroundColor(.white)
                                    .font(.custom("BebasNeue-Regular", size: 17))
                                    .padding(.leading, 68)
                                    .frame(alignment: .leading)
                                Spacer()
                            }
                            HStack{
                                Text("Horário: 22:00")
                                    .foregroundColor(.white)
                                    .font(.custom("BebasNeue-Regular", size: 17))
                                    .padding(.leading, 68)
                                    .frame(alignment: .leading)
                                Spacer()
                            }
                        }
                        HStack{
                            Image("CoracaoVermelho")
                                .resizable()
                                .frame(width: 17, height: 17,alignment: .trailing)
                                .padding(.trailing, 68)
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
