//
//  DropdownUI.swift
//  LoginPage
//
//  Created by Guest User on 1/21/22.
//

import SwiftUI

struct DropdownUI: View {
    @State var test = ""
    @State private var dropdown: String = ""
    @State var type = 0
    var items = ["Emma","Simma","Roma","Demma","Gemma"]

    var body: some View {
        HStack{
            TextField("Emma", text: $test)
                .disabled(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                .padding(.all, 12)
            /*
            Image(systemName:"arrowtriangle.down.fill")
                    .resizable()
                    .frame(width: 9, height: 5)
                    .font(Font.system(size: 9, weight: .medium))
                    .foregroundColor(Color.black)
 */
            Spacer()
        }
        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)

        .overlay(
            //Text("Hi")
            Picker(
                selection: $test,
                label:
                    HStack{
                        TextField("Emma",text:$test)
                            .padding(.all, 12)
                            .disabled(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                        Image(systemName:"arrowtriangle.down.fill")
                        .resizable()
                        .frame(width: 9, height: 5)
                        .font(Font.system(size: 9, weight: .medium))
                        .foregroundColor(Color.black)
                        Spacer()
                    },
                content: {
                ForEach(items, id:\.self){
                    Text($0)
                    
                }
            }).pickerStyle(MenuPickerStyle())
        )
 
    }
}

struct DropdownUI_Previews: PreviewProvider {
    static var previews: some View {
        DropdownUI()
    }
}
