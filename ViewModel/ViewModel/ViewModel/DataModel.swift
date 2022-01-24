//
//  DataModel.swift
//  ViewModel
//
//  Created by Guest User on 1/24/22.
//

import SwiftUI

struct DataModel: View {
    
    var body: some View {
        CardView()
            .overlay(
                VStack(spacing: 20){
                    HStack{
                        Image(systemName: "person.crop.circle")
                            .font(.system(size: 50))
                        VStack(alignment:.leading){
                            Text("TEST-16643")
                                .bold()
                                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            Text("2021-05-25")
                                .opacity(0.4)
                        }
                        Spacer()
                        Image(systemName: "checkmark")
                            .resizable()
                            .frame(width: 20, height: 15, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .font(Font.system(size: 20, weight: .bold))
                            .foregroundColor(.green)
                            
                            
                    }
                    VStack(alignment:.leading){
                        HStack{
                            Image(systemName: "person.crop.circle")
                                .clipShape(Circle())
                                .font(.system(size: 40))
                                .padding(.trailing)
                            VStack(alignment:.leading){
                                Text("Provider Name")
                                    .opacity(0.4)
                                Text("Rashed Momin-TEST")
                                    .bold()
                            }
                        }.padding(.bottom)
                        HStack{
                            Image(systemName: "person.crop.circle")
                                .clipShape(Circle())
                                .font(.system(size: 40))
                                .padding(.trailing)
                            VStack(alignment:.leading){
                                Text("Body Region")
                                    .opacity(0.4)
                                Text("Rashed Momin-TEST")
                                    .bold()
                            }
                        }.padding(.bottom)
                        HStack{
                            Image(systemName: "person.crop.circle")
                                .clipShape(Circle())
                                .font(.system(size: 40))
                                .padding(.trailing)
                            VStack(alignment:.leading){
                                Text("Registratiion Type")
                                    .opacity(0.4)
                                Text("In Clinic")
                                    .bold()
                            }
                        }.padding(.bottom)
                        HStack{
                            Image(systemName: "person.crop.circle")
                                .clipShape(Circle())
                                .font(.system(size: 40))
                                .padding(.trailing)
                            VStack(alignment:.leading){
                                Text("Total Assigned Home Exercise")
                                    .opacity(0.4)
                                Text("477")
                                    .bold()
                            }
                        }.padding(.bottom)
                        
                    }
                    Group{
                        Button(action:{}){
                            Text("VIEW ASSIGNED EXCERCISES")
                                .bold()
                                .padding()
                                .foregroundColor(.white)
                            
                        }.frame(width: 390, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    }
                    .background(Color.init(red: 8/255, green: 24/255, blue: 89/255))                }
                
            )
    }
}

struct DataModel_Previews: PreviewProvider {
    static var previews: some View {
        DataModel()
    }
}
