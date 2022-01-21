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
        ZStack{
            Color.white
                .frame(width: 300, height: 350, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            VStack{
                Text("Sign In")
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                
                Spacer()
                Spacer()
                DropdownUI()
                Spacer()
                HStack{
                TextField("Email Adress", text: $email_adress)
                    .padding(.all, 12)
                    .border(Color.black)
                    .keyboardType(.emailAddress)
                    .autocapitalization(.none)
                }
        
                
                //Spacer()
                SecureField("Password", text: $password)
                    .padding(.all, 12)
                    .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                //Spacer()
                
    
                Group{
                    Button(action:{}){
                        Text("Sign In")
                            .padding()
                            .foregroundColor(.white)
                    }.frame(width: 280, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                }
                .background(Color.init(red: 8/255, green: 50/255, blue: 150/255))
            }
            .padding()
            .frame(width: 280, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        
        }
        .padding(.all)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
