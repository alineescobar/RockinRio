//
//  TabBarView.swift
//  RockinRio
//
//  Created by Aline Osana Escobar on 29/03/21.
//

import SwiftUI

struct TabBarView: View {
    
    let topColor = UIColor(red: 124/255, green: 126/255, blue: 170/255, alpha: 1)
    let bottomColor = UIColor(red: 18/255, green: 6/255, blue: 17/255, alpha: 1)
    
        init() {
            let layer = CAGradientLayer()
            layer.colors = [UIColor.red.cgColor, UIColor.black.cgColor]
    
    
            UITabBar.appearance().barTintColor = UIColor.black
        }
    
    var body: some View {
        TabView {
            Text("Tela pesquisa")
                .tabItem {
                    Image("icon pesquisa").renderingMode(.original)
                    Text("Pesquisar")
                }
            Text("Tela Programacao")
                .tabItem {
                    Image("icon guitar").renderingMode(.original)
                    Text("Programação")
                }
            Text("Tela Minha Agenda")
                .tabItem {
                    Image("icon Agenda").renderingMode(.original)
                        .resizable()
                    
                    Text("Minha agenda")
                }
            Text("Tela Perfil")
                .tabItem {
                    
                    Image("Icon Perfil").renderingMode(.original)
                        .resizable()
                        .frame(width: 10, height: 10)
                    Text("Perfil")
                }
        }
        .font(.headline)
    }
    
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}

