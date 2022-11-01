//
//  AddView.swift
//  IphoneIpadFirebase
//
//  Created by Miguel Angel Ruiz on 01/11/22.
//

import SwiftUI

struct AddView: View {
    
    @State private var titulo = ""
    @State private var desc = ""
    var consolas = ["playstation", "nintendo", "xbox"]
    @State private var plataforma = "playstation"
    
    var body: some View {
        ZStack{
            Color.yellow.edgesIgnoringSafeArea(.all)
            VStack{
                TextField("Titulo", text: $titulo)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                TextEditor(text: $desc)
                    .frame(height: 200)
                Picker( "Consolas", selection: $plataforma){
                    ForEach(consolas, id: \.self ) { item in
                        Text(item)
                            .foregroundColor(.black)
                    }
                }
                Button(action:{
                    //
                }){
                    Text("Guardar")
                        .foregroundColor(.black)
                        .bold()
                        .font(.largeTitle)
                }
                Spacer()
            }.padding(.all)
        }
    }
}
