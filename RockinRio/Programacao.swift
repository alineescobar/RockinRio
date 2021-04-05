//
//  Programacao.swift
//  RockinRio
//
//  Created by José Antônio Linch Burmann on 05/04/21.
//

import SwiftUI

enum Palco: String, CaseIterable, Identifiable {
    case mundo
    case sunset
    var id: String { self.rawValue }
}

struct Programacao: View {
    @State private var selected = Palco.mundo
    @State var diaEvento = "<  25 DE SETEMBRO  >"
    static let lightGray = Color("LightGray")

    var body: some View {
        VStack{
            VStack(alignment: .leading){
                HStack{
                    Image("2logo").resizable().frame(width: 65, height: 65, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    Spacer()
                }
            }
            
            Picker("Palco", selection: $selected) {
                Text("PALCO MUNDO").tag(Palco.mundo).font(.custom("BebasNeue-Regular", size: 20))
                Text("PALCO SUNSET").tag(Palco.sunset).font(.custom("BebasNeue-Regular", size: 20))
            }.pickerStyle(SegmentedPickerStyle()).padding(.horizontal, 30).font(.custom("BebasNeue-Regular", size: 20))

            Text("\(diaEvento)").bold().font(.custom("BebasNeue-Regular", size: 20)).foregroundColor(.white).padding(.top, 20)
            ScrollView {
                switch selected {
                case Palco.mundo:
                    VStack(alignment: .leading){
                        Text("IRON MAIDEN").bold().multilineTextAlignment(.leading).padding(.leading, 30).font(.custom("BebasNeue-Regular", size: 20))
                        Image("Iron Maiden")
                            .resizable()
                            .scaledToFit()
                            .padding(.leading, 30)
                            .padding(.trailing, 30)
                        HStack{
                            Text("25 SETEMRBO 2021").bold().multilineTextAlignment(.leading).padding(.leading, 30).font(.custom("BebasNeue-Regular", size: 20))
                            Spacer()
                            Image("CoracaoBordaBranca")                                .resizable()
                                .frame(width: 25, height: 25,alignment: .trailing)
                                .padding(.trailing, 40)
                        }
                        Text("HORÁRIO: 22:00").bold().multilineTextAlignment(.leading).padding(.leading, 30).font(.custom("BebasNeue-Regular", size: 20))
                    }.foregroundColor(.white).padding(.top, 20)
                    
                case Palco.sunset:
                    VStack(alignment: .leading){
                        Text("IRON MAIDEN").bold().multilineTextAlignment(.leading).padding(.leading, 30).font(.custom("BebasNeue-Regular", size: 20))
                        Image("Iron Maiden")
                            .resizable()
                            .scaledToFit()
                            .padding(.leading, 30)
                            .padding(.trailing, 30)
                        HStack{
                            Text("25 SETEMRBO 2021").bold().multilineTextAlignment(.leading).padding(.leading, 30).font(.custom("BebasNeue-Regular", size: 20))
                            Spacer()
                            Image("CoracaoBordaBranca")                                .resizable()
                                .frame(width: 25, height: 25,alignment: .trailing)
                                .padding(.trailing, 40)
                        }
                        Text("HORÁRIO: 22:00").bold().multilineTextAlignment(.leading).padding(.leading, 30).font(.custom("BebasNeue-Regular", size: 20))
                    }.foregroundColor(.white).padding(.top, 20)
                    
                    VStack(alignment: .leading){
                        Text("IRON MAIDEN").bold().multilineTextAlignment(.leading).padding(.leading, 30).font(.custom("BebasNeue-Regular", size: 20))
                        Image("Iron Maiden")
                            .resizable()
                            .scaledToFit()
                            .padding(.leading, 30)
                            .padding(.trailing, 30)
                        HStack{
                            Text("25 SETEMRBO 2021").bold().multilineTextAlignment(.leading).padding(.leading, 30).font(.custom("BebasNeue-Regular", size: 20))
                            Spacer()
                            Image("CoracaoBordaBranca")                                .resizable()
                                .frame(width: 25, height: 25,alignment: .trailing)
                                .padding(.trailing, 40)
                        }
                        Text("HORÁRIO: 22:00").bold().multilineTextAlignment(.leading).padding(.leading, 30).font(.custom("BebasNeue-Regular", size: 20))
                    }.foregroundColor(.white).padding(.top, 20)
                    
                    VStack(alignment: .leading){
                        Text("IRON MAIDEN").bold().multilineTextAlignment(.leading).padding(.leading, 30).font(.custom("BebasNeue-Regular", size: 20))
                        Image("Iron Maiden")
                            .resizable()
                            .scaledToFit()
                            .padding(.leading, 30)
                            .padding(.trailing, 30)
                        HStack{
                            Text("25 SETEMRBO 2021").bold().multilineTextAlignment(.leading).padding(.leading, 30).font(.custom("BebasNeue-Regular", size: 20))
                            Spacer()
                            Image("CoracaoBordaBranca")                                .resizable()
                                .frame(width: 25, height: 25,alignment: .trailing)
                                .padding(.trailing, 40)
                        }
                        Text("HORÁRIO: 22:00").bold().multilineTextAlignment(.leading).padding(.leading, 30).font(.custom("BebasNeue-Regular", size: 20))
                    }.foregroundColor(.white).padding(.top, 20)
                }
            }
            Spacer()
        }.padding().padding(.top, 30)
        }

struct Programacao_Previews: PreviewProvider {
    static var previews: some View {
        Programacao()
    }
}
}
