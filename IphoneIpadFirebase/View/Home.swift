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
    var body: some View {
        ZStack{
            VStack{
                NavBar(index: $index, menu: $menu)
                ZStack{
                    if index == "Playstation"{
                        VStack{
                            Color.blue
                        }
                    } else if index == "Xbox"{
                        VStack{
                            Color.green
                        }
                    } else {
                        VStack {
                            Color.red
                        }
                    }
                }
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
