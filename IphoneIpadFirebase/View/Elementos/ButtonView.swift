//
//  ButtonView.swift
//  IphoneIpadFirebase
//
//  Created by Miguel Angel Ruiz on 18/10/22.
//

import SwiftUI

struct ButtonView: View {
    @Binding var index : String
    @Binding var menu : Bool
    var title : String
    
    var body: some View {
        Button(action: {
            withAnimation{index = title}
        }){
            Text(title)
                .font(.title)
                .fontWeight(index == title ? .bold : .none)
                .foregroundColor(index == title ? .white : Color.white.opacity(0.6))
        }
    }
}

