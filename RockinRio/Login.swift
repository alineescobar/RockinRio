//
//  Login.swift
//  RockinRio
//
//  Created by Eduarda Soares Serpa Camboim on 30/03/21.
//

import SwiftUI

struct ColorManager {
    static let lightGray = Color("LightGray")
    static let blueFB = Color("blueFB")
    static let blueLogin = Color("blueLogin")
}

struct Login: View {
    @State private var clicked1 = false
    @State var email: String = ""
    @State var senha: String = ""
    let appleImage = Image(systemName: "applelogo")
    let fbImage = Image("fb")
    let googleImage = Image("Google")
    static let lightGray = Color("LightGray")

    var body: some View {
        
        VStack{
            VStack (alignment:.center){
                Image("2logo").padding(.bottom, 10.0)

                VStack{
                    VStack (alignment:.leading){
                        Text("EMAIL:").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).font(.custom("BebasNeue-Regular", size: 20))
                        TextField("", text: $email).frame(height: 40.0).background(ColorManager.lightGray)
                            .border(ColorManager.lightGray, width: 2).cornerRadius(5)
                    }.padding(.horizontal)
                
            
                    VStack (alignment:.leading){
                        Text("SENHA:").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).font(.custom("BebasNeue-Regular", size: 20)).padding(.top)
                        TextField("", text: $senha).frame(height: 40.0).background(ColorManager.lightGray).border(ColorManager.lightGray, width: 2).cornerRadius(5)
                    }.padding(.horizontal)
                
                    Text("Esqueci a senha").foregroundColor(.blue).font(.subheadline)
                }.padding(.horizontal)
        
                VStack{
                    Button(action: {
                        clicked1 = true
                    }){
                        Text("ENTRAR")
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .font(.custom("BebasNeue-Regular", size: 28))
                            .padding(8)
                            .frame(width: 250.0)
                            .border(ColorManager.blueLogin, width: 2)
                            .background(ColorManager.blueLogin)
                            .cornerRadius(10)
                    }.fullScreenCover(isPresented: $clicked1, content:  {
                        ContentView(viewRouter: ViewRouter())
                    })
                    
                    
                    HStack{
                        Text("Não possui conta?").foregroundColor(.gray)
                        Text("Cadastre-se agora.").foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    }.font(.subheadline).padding(.bottom)
                }.padding()
                
                VStack{
                    Button(action: {
                       // Text("Apple")
                    }){
                        Text("\(appleImage)  Continuar com a Apple")
                            .foregroundColor(.white)
                            .padding(10)
                            .frame(width: 320.0)
                            .border(Color.black, width: 2)
                            .background(Color.black)
                            .cornerRadius(14)
                    }.padding(.bottom, 10.0)
                    
                    Button(action: {
                       // Text("Facebook")
                    }){
                        HStack{
                        Text("\(fbImage)   Continuar com o Facebook")
                            .foregroundColor(.white)
                            .padding(10)
                            .frame(width: 320.0)
                            .border(ColorManager.blueFB, width: 2)
                            .background(ColorManager.blueFB)
                            .cornerRadius(14)
                        }
                    }.padding(.bottom, 10.0)
        
                    Button(action: {
                       // Text("Google")
                    }){
                        Text("\(googleImage)  Continuar com o Google")
                            .foregroundColor(.black)
                            .padding(10)
                            .frame(width: 318.0)
                            .background(Color.white)
                            .cornerRadius(14)
                    }
                    .frame(width: 320.0)
                    .border(Color.gray, width: 1)
                    .background(Color.gray)

                    .cornerRadius(14)
                }.padding()
            
                
            }.padding()
            .frame(width: 360.0, height: 740.0)
            .background(Color.white)
            .cornerRadius(14)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(ColorManager.lightGray)
        .edgesIgnoringSafeArea(.all)
        .navigationBarHidden(true)
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
