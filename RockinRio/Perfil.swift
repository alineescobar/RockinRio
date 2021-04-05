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
                    .frame(width: 50.0, height: 50.0).padding(.leading, 290.0).padding(.top, 10.0)
            }
            VStack (alignment:.center){
                Image("foto_perfil").resizable()
                    .frame(width: 100.0, height: 100.0).clipShape(Circle())
                Text("Alterar foto").foregroundColor(.blue).font(.subheadline)
            }
            VStack{
                VStack (alignment:.leading){
                    Text("NOME:").fontWeight(.bold).font(.custom("BebasNeue-Regular", size: 20))
                    TextField("", text: $nome).frame(height: 40.0).background(ColorManager.lightGray)
                        .border(ColorManager.lightGray, width: 2).cornerRadius(5)
                }.padding(.horizontal)
                
                VStack (alignment:.leading){
                    Text("DATA DE NASCIMENTO:").fontWeight(.bold).font(.custom("BebasNeue-Regular", size: 20))
                    DatePicker("Prompt Text",
                               selection: $selectedDate, displayedComponents: .date)
                                 .datePickerStyle(WheelDatePickerStyle())
                                 .labelsHidden()
                    .background(ColorManager.lightGray)
                        .border(ColorManager.lightGray, width: 2).cornerRadius(5)
                }.padding(.horizontal)
                
                Spacer()
                Text("Alterar a senha").foregroundColor(.blue).font(.subheadline)
            
            }.padding([.leading, .bottom, .trailing])
            
            VStack{
                Button(action: {
                   // Text("Salvar")
                }){
                    Text("SALVAR")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .font(.custom("BebasNeue-Regular", size: 28))
                        .padding(.bottom, 8)
                        .frame(width: 250.0)
                        .border(ColorManager.blueLogin, width: 2)
                        .background(ColorManager.blueLogin)
                        .cornerRadius(10)
                }
            }
            .padding(.bottom)
        }
        .background(Color.white)
        .cornerRadius(14)
    }
    }
}

struct Perfil_Previews: PreviewProvider {
    static var previews: some View {
        Perfil()
    }
}
