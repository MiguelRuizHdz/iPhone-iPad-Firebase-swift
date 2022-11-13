//
//  Home.swift
//  IphoneIpadFirebase
//
//  Created by Miguel Angel Ruiz on 18/10/22.
//

import SwiftUI

struct Home: View {
    @State private var index = "Playstation"
    @State private var menu = false
    @State private var widthMenu = UIScreen.main.bounds.width
    
    
    var body: some View {
        ZStack{
            VStack{
                NavBar(index: $index, menu: $menu)
                ZStack{
                    if index == "Playstation"{
                        ListView(plataforma: "playstation")
                    } else if index == "Xbox"{
                        ListView(plataforma: "xbox")
                    } else if index == "Nintendo"{
                        ListView(plataforma: "nintendo")
                    } else {
                        AddView()
                    }
                }
            }
            // termina navbar ipad
            if menu {
                HStack {
                    Spacer()
                    VStack {
                        HStack{
                            Spacer()
                            Button(action: {
                                withAnimation{
                                    menu.toggle()
                                }
                            }){
                                Image(systemName: "xmark")
                                    .font(.system(size: 22, weight: .bold))
                                    .foregroundColor(.white)
                            }
                        }.padding()
                        .padding(.top, 50)
                        VStack(alignment: .trailing){
                            ButtonView(index: $index, menu: $menu, title: "Playstation")
                            ButtonView(index: $index, menu: $menu, title: "Xbox")
                            ButtonView(index: $index, menu: $menu, title: "Nintendo")
                        }
                        Spacer()
                    }
                    .frame(width: widthMenu - 200)
                    .background(Color.purple)
                }
            }
        }
        .background(Color("fondo"))
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
