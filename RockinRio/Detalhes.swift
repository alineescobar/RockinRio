//
//  SwiftUIView.swift
//  RockinRio
//
//  Created by Camila Prates on 04/04/21.
//

import SwiftUI

struct Detalhes: View {
        @StateObject var viewRouter: ViewRouter
        var body: some View {
            GeometryReader { geometry in
                VStack {
                    Spacer()
                    
                        Button(action: {
                        }){
                            Text("Programação")
                                .foregroundColor(.white)
                                .font(.custom("SF Pro Display", size: 13))
                                .padding(.top, 0)
                                .padding(.trailing, 160)
                                .frame(alignment: .trailing)
                        }
                        .ignoresSafeArea()
                    switch viewRouter.currentPage {
                    case .pesquisa:
                        VStack{
                        Spacer()
                        HStack {
                            Image("2logo")
                                .resizable()
                                .frame(width: 50, height: 50, alignment: .leading)
                                .padding(.leading, 260)
                                .padding(.top, -10)
                            Spacer()
                        }
                        Text("Iron Maiden")
                            .font(.custom("BebasNeue-Regular", size: 17))
                            .foregroundColor(.black)
                            .frame(alignment: .trailing)
                            .padding(.top, 10)
                            .padding(.leading, -118)
                            
                            Image("Iron Maiden")
                                .resizable()
                                .frame(width: 240, height: 170)
                                .padding(.leading, 68)
                                .padding(.trailing, 68)
                                .padding(.top, -5)
                            
                            Spacer()
                            
                            VStack{
                                HStack{
                                    VStack{
                                        HStack{
                                            Text("Palco Mundo")
                                                .foregroundColor(.black)
                                                .font(.custom("SF pro display", size: 15))
                                                .frame(alignment: .leading)
                                                .padding(.leading, 70)
                                            Spacer()
                                        }
                                        HStack{
                                            Text("25 setembro 2021")
                                                .foregroundColor(.black)
                                                .font(.custom("SF pro display", size: 15))
                                                .padding(.leading, 70)
                                                .frame(alignment: .leading)
                                            Spacer()
                                        }
                                        HStack{
                                            Text("Horário: 22:00")
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
                                
                                Text("Iron Maiden é uma banda britânica de heavy metal, formada em 1975 pelo baixista Steve Harris, ex-integrante das bandas Gypsy’s Kiss e Smiler. \nO nome “Iron Maiden”, homônimo de um instrumento de tortura medieval.")
                                    .foregroundColor(.black)
                                    .font(.custom("SF pro display", size: 14))
                                    .padding(.leading, 70)
                                    .padding(.trailing, 70)
                                    .padding(.top, 20)
                                    .frame(alignment: .leading)
                                Spacer()
                              
                               
                            }
                       
                        }.padding(.top,20)
                        .frame(width:275, height: 700)
                        .background(Color.white)
                        .cornerRadius(14)
                            
                    
                    case .programacao:
                        Text("Tela de programação")
                    case .minhaAgenda:
                        MinhaAgenda()
                    case .perfil:
                        Text("Tela de perfil")
                    }
                    Spacer()
                    HStack {
                        TabBarIcon(
                            viewRouter: viewRouter,
                            assignedPage: Page.pesquisa,
                            width: geometry.size.width/5,
                            height: geometry.size.height/28,
                            iconName: "icon pesquisa",
                            tabName: "Pesquisa"
                        )
                        TabBarIcon(
                            viewRouter: viewRouter,
                            assignedPage: Page.programacao,
                            width: geometry.size.width/5,
                            height: geometry.size.height/28,
                            iconName: "icon guitar",
                            tabName: "Programação"
                        )
                        TabBarIcon(
                            viewRouter: viewRouter,
                            assignedPage: Page.minhaAgenda,
                            width: geometry.size.width/5,
                            height: geometry.size.height/28,
                            iconName: "icon Agenda",
                            tabName: "Minha agenda"
                        )
                        TabBarIcon(
                            viewRouter: viewRouter,
                            assignedPage: Page.perfil,
                            width: geometry.size.width/5,
                            height: geometry.size.height/28,
                            iconName: "Icon Perfil",
                            tabName: "Perfil"
                        )
                    }
                    .frame(width: geometry.size.width, height: geometry.size.height/10)
                    .background(LinearGradient(
                        gradient: Gradient(colors: [Color.init(UIColor(red: 124/255, green: 126/255, blue: 170/255, alpha: 1)), Color.init(UIColor(red: 18/255, green: 6/255, blue: 17/255, alpha: 1))]), startPoint: UnitPoint(x: 0.5, y: 0.01) , endPoint: .bottom
                    )
                    )
                }
                .padding(.top, 20)
                .background(RadialGradient(
                    gradient: Gradient(colors: [Color.init(UIColor(red: 124/255, green: 126/255, blue: 170/255, alpha: 1)), Color.init(UIColor(red: 18/255, green: 6/255, blue: 17/255, alpha: 1))]), center: .center, startRadius: 0, endRadius: 350
                ))
                .ignoresSafeArea()
            }
        }
    }


struct Detalhes_Previews: PreviewProvider {
    static var previews: some View {
        Detalhes(viewRouter: ViewRouter())
    }
}

