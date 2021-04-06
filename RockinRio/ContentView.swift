//
//  ContentView.swift
//  RockinRio
//
//  Created by Aline Osana Escobar on 29/03/21.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewRouter: ViewRouter
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Spacer()
                switch viewRouter.currentPage {
                case .pesquisa:
                    Pesquisa()
                        .padding(.bottom, -10)
                case .programacao:
                    Programacao()
                case .minhaAgenda:
                    MinhaAgenda()
                case .perfil:
                    Perfil()
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
            .background(RadialGradient(
                gradient: Gradient(colors: [Color.init(UIColor(red: 124/255, green: 126/255, blue: 170/255, alpha: 1)), Color.init(UIColor(red: 18/255, green: 6/255, blue: 17/255, alpha: 1))]), center: .center, startRadius: 0, endRadius: 350
            ))
            .ignoresSafeArea()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewRouter: ViewRouter())
    }
}

struct TabBarIcon: View {
    @StateObject var viewRouter: ViewRouter
    let assignedPage: Page
    
    let width, height: CGFloat
    let iconName, tabName: String
    
    var body: some View {
        VStack{
            Image(iconName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: width, height: height)
                .padding(.top, 10)
            Text(tabName)
                .font(.footnote)
                .foregroundColor(.white)
            Spacer()
        }
        .onTapGesture {
            viewRouter.currentPage = assignedPage
        }
        
    }
}
