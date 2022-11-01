//
//  CardView.swift
//  IphoneIpadFirebase
//
//  Created by Miguel Angel Ruiz on 01/11/22.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        VStack(spacing: 20){
            Image("codw2")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text("Call of Duty: Modern Warfare II")
                .font(.title)
                .bold()
                .foregroundColor(.black)
        }.padding()
        .background(Color.white)
        .cornerRadius(20)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
