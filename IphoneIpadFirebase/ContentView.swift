//
//  ContentView.swift
//  IphoneIpadFirebase
//
//  Created by Miguel Angel Ruiz on 11/10/22.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var loginShow : FirebaseViewModel
    var body: some View {
        return Group {
            if loginShow.show {
                Login()
                    .edgesIgnoringSafeArea(.all)
                    .preferredColorScheme(.dark)
            } else {
                Login()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

