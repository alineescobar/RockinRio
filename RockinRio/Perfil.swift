//
//  Perfil.swift
//  RockinRio
//
//  Created by Eduarda Soares Serpa Camboim on 05/04/21.
//

import SwiftUI
import Foundation
//struct DatePicker<Label> where Label : View

//class DateFormatter : Formatter {}

struct Perfil: View {
    @State var nome: String = ""
    
    
    let date : Date = Date()
    let dateFormatter = DateFormatter()
    
    @State private var selectedDate = Date();

    var body: some View {
        VStack{
            VStack{
                VStack (alignment:.leading){
                    Image("2logo") .resizable()
                        .frame(width: 50.0, height: 50.0).padding(.leading, 250.0).padding(.top, 10.0)
                }
                VStack (alignment:.center){
                    Image("foto_perfil").resizable()
                        .frame(width: 100.0, height: 100.0).clipShape(Circle())
                    Text("Alterar foto").foregroundColor(.blue).font(.subheadline)
                }
                VStack{
                    VStack{
                    VStack (alignment:.leading){
                        Text("NOME:").fontWeight(.bold).font(.custom("BebasNeue-Regular", size: 20))
                        TextField("", text: $nome).frame(width: 280.0, height: 40.0).background(ColorManager.lightGray)
                            .border(ColorManager.lightGray, width: 2).cornerRadius(5)
                    }.padding(.trailing)
                    
                    VStack (alignment:.leading){
                        Text("DATA DE NASCIMENTO:").fontWeight(.bold).font(.custom("BebasNeue-Regular", size: 20))
                        DatePicker("Prompt Text",
                                   selection: $selectedDate, displayedComponents: .date).frame(width: 250.0).padding()
                        .datePickerStyle(WheelDatePickerStyle())
                        .labelsHidden()
                        .background(ColorManager.lightGray)
                        .border(ColorManager.lightGray, width: 2)
                        .cornerRadius(5)
                        
                           
                    }.padding(.trailing)
                    }.padding(.leading)
                    Spacer()
                    Text("Alterar a senha").foregroundColor(.blue).font(.subheadline).padding([.leading, .bottom, .trailing, .top])
                
                }.padding(.leading, 70)
                .padding(.trailing, 70)
                
                VStack{
                    Button(action: {
                       // Text("Salvar")
                    }){
                        Text("SALVAR")
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding(.top, 8)
                            .font(.custom("BebasNeue-Regular", size: 28))
                            .padding(.bottom, 8)
                            .frame(width: 220.0)
                            .border(ColorManager.blueLogin, width: 2)
                            .background(ColorManager.blueLogin)
                            .cornerRadius(10)
                    }
                }
                .padding(.bottom)
            }
            .frame(width:307, height: 700)
            .background(Color.white)
            .cornerRadius(14)
        
        }.padding(.bottom, -30)
        .padding(.top, 40)
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
        .background(RadialGradient(
            gradient: Gradient(colors: [Color.init(UIColor(red: 124/255, green: 126/255, blue: 170/255, alpha: 1)), Color.init(UIColor(red: 18/255, green: 6/255, blue: 17/255, alpha: 1))]), center: .center, startRadius: 0, endRadius: 350
        ))
        .ignoresSafeArea()
    }
}

struct Perfil_Previews: PreviewProvider {
    static var previews: some View {
        Perfil()
    }
}
