//
//  ContentView.swift
//  LoginPage
//
//  Created by Guest User on 1/17/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            CardView()
                .overlay(
                    VStack{
                        Spacer()
                        MMHlogos()
                        Spacer()
                        SwiftUIView()
                        Spacer()
                            .padding()                    }
                )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
