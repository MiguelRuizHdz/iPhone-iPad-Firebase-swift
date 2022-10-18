//
//  NavBar.swift
//  IphoneIpadFirebase
//
//  Created by Miguel Angel Ruiz on 18/10/22.
//

import SwiftUI

struct NavBar: View {
    
    var device = UIDevice.current.userInterfaceIdiom
    
    var body: some View {
        HStack {
            Text("My Games")
                .font(.title)
                .bold()
                .foregroundColor(.white)
                .font(.system(size: device == .phone ? 25 : 35))
            Spacer()
            if device == .pad {
                // menu ipad
            } else {
                // menu iphone
            }
        }
    }
}

struct NavBar_Previews: PreviewProvider {
    static var previews: some View {
        NavBar()
    }
}
