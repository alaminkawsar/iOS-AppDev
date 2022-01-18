//
//  ContentView.swift
//  LoginPage
//
//  Created by Guest User on 1/17/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color.init(red: 8/255, green:24/255, blue: 89/255).ignoresSafeArea()
            VStack{
                Spacer()
                MMHlogos()
                Spacer()
                SwiftUIView()
                Spacer()
                    .padding()
            
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
