//
//  SwiftUIView.swift
//  LoginPage
//
//  Created by Guest User on 1/17/22.
//

import SwiftUI

struct SwiftUIView: View {
    
    @State private var email_adress: String = ""
    @State private var password: String = ""
    @State private var dropdown: String = ""
    //@State private var signIn: String = ""
    var body: some View {
        VStack{
            Text("Sign In")
            //Spacer(minLength:20)
            Spacer()
            TextField("Emma",text: $dropdown)
        
            Spacer()
            TextField("Email Adress", text: $email_adress)
            Spacer()
            SecureField(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=Label@*/"Password"/*@END_MENU_TOKEN@*/, text: $password)
            Spacer()
            Button(action:{
        
            }){
                Text("Sign In")
                    .bold()
                    .foregroundColor(.blue)
            }.frame(width: 250, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        }
        .padding()
        .frame(width: 300, height: 250, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        
       
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
