//
//  CardView.swift
//  LoginPage
//
//  Created by Guest User on 1/20/22.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        Rectangle()
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .foregroundColor(Color.init(red: 8/255, green:24/255, blue: 89/255)).ignoresSafeArea()
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
