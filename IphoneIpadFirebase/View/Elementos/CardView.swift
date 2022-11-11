//
//  CardView.swift
//  IphoneIpadFirebase
//
//  Created by Miguel Angel Ruiz on 01/11/22.
//

import SwiftUI

struct CardView: View {
    
    var titulo : String
    var portada : String
    
    var body: some View {
        VStack(spacing: 20){
            ImagenFirebase(imageUrl: portada)
            Text(titulo)
                .font(.title)
                .bold()
                .foregroundColor(.black)
        }.padding()
        .background(Color.white)
        .cornerRadius(20)
    }
}
