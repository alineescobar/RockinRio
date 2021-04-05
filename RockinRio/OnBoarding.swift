//
//  goTo.swift
//  teste
//
//  Created by Heitor Feijó Kunrath on 30/03/21.
//

import SwiftUI

struct onBoarding: View {
    
    @State private var clicked = false
    @State private var selected = 0
    var body: some View {
        if clicked{
            Login()
        }
        else{
            ZStack{
                TabView() {
                    
                    VStack{
                        Spacer()
                        Spacer()
                        Image("2logo").resizable().frame(width: 256.0, height: 251.0)
                        
                        Text("      O maior festival \n de música do planeta").font(.custom("BebasNeue-Regular", size: 29)).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).foregroundColor(Color.white).frame(width: 256).padding(.top, 26)
                        Spacer()
                        Spacer()
                        Spacer()
                        
                    }.tabItem {
                        
                    }
                    VStack{
                        Spacer()
                        Image("2logo").resizable().frame(width: 209.0, height: 205.0).padding(.bottom,20)
                        
                        VStack{
                            Text("o melhor rock in rio \n de todos os tempos\n")
                            Text("27-25-26-30")
                            Text("setembro 2021\n")
                            Text("01-02-03")
                            Text("outubro 2021")
                        }.font(.custom("BebasNeue-Regular", size: 29)).frame(width: 256, height: 295, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).foregroundColor(Color.white)
                        Spacer()
                        
                        
                        ZStack{
                            RoundedRectangle(cornerRadius: 10).fill(Color(UIColor(displayP3Red: 20/255, green: 113/255, blue: 172/255, alpha: 1))).frame(width:121, height: 44, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            
                            Text("Ver bandas").foregroundColor(.white).font(.custom("SF Pro Display", size: 18))
                        }
                        .onTapGesture {
                            clicked = true
                        }
                        
                        
                        Spacer()
                        Spacer()
                    }.tabItem {
                        
                    }
                    
                }.tabViewStyle(PageTabViewStyle())
                .background(RadialGradient(
                    gradient: Gradient(colors: [Color.init(UIColor(red: 124/255, green: 126/255, blue: 170/255, alpha: 1)), Color.init(UIColor(red: 18/255, green: 6/255, blue: 17/255, alpha: 1))]), center: .center, startRadius: 0, endRadius: 350
                ))
                .ignoresSafeArea()
            }
        }
        
    }
    
}
struct goTo_Previews: PreviewProvider {
    static var previews: some View {
        onBoarding()
    }
}
