//
//  CardView.swift
//  ViewModel
//
//  Created by Guest User on 1/24/22.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        Rectangle()
            .frame(width: 390, height: 400, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .foregroundColor(Color.init(red: 250/255, green: 245/255, blue: 240/255)).ignoresSafeArea()
            .cornerRadius(15)
        
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
