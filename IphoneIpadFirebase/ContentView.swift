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
                Home()
                    .edgesIgnoringSafeArea(.all)
                    .preferredColorScheme(.dark)
            } else {
                Login()
                    .preferredColorScheme(.light)
            }
        }.onAppear{
            if (UserDefaults.standard.object(forKey: "sesion")) != nil {
                loginShow.show = true
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
