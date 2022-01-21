//
//  MMHlogos.swift
//  LoginPage
//
//  Created by Guest User on 1/17/22.
//

import SwiftUI

struct MMHlogos: View {
    var body: some View {
        HStack{
            Image("MMH2")
            HStack{
                Text("Medical")
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                Text("HUB")
                    .bold()
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            }
        }
    }
}

struct MMHlogos_Previews: PreviewProvider {
    static var previews: some View {
        MMHlogos()
    }
}
