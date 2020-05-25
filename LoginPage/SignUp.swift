//
//  LoginView.swift
//  LoginPage
//
//  Created by Manjit on 25/05/2020.
//  Copyright © 2020 LoginPage. All rights reserved.
//

import SwiftUI

struct SignupView: View {
    @State var email = ""
    @State var pass = ""
    @State var repass = ""

    var body: some View {
        VStack{
            VStack{
                HStack(spacing:15){
                    Image(systemName: "envelope").foregroundColor(.black)
                    TextField("Enter Email Adress", text: self.$email)
                }.padding(.vertical,20).padding(.horizontal,20)
                Divider()
                HStack(spacing:15){
                    Image(systemName: "lock").resizable().foregroundColor(.black).frame(width:15,height:15)
                    SecureField("Enter Passowrd", text: self.$pass)
                    Button(action: {
                        
                    }){
                        Image(systemName: "eye").foregroundColor(.black)
                    }
                }.padding(.vertical,20)
                .padding(.horizontal,20)
                Divider()
                HStack(spacing:15){
                    Image(systemName: "lock").resizable().foregroundColor(.black).frame(width:15,height:15)
                    SecureField("Re Password", text: self.$repass)
                    Button(action: {
                        
                    }){
                        Image(systemName: "eye").foregroundColor(.black)
                    }
                }.padding(.vertical,20)
                    .padding(.bottom,20)
                    .padding(.horizontal,20)
            }.background(Color.white).cornerRadius(10)
                .padding(.horizontal,10)
                .padding(.top,10)
            Button(action: {
                
            }){
                Text("SIGNUP").fontWeight(.heavy).padding(.vertical)
                    .frame(width: UIScreen.main.bounds.width-100).foregroundColor(Color.white)
                
            }.background(LinearGradient(gradient: .init(colors: [Color("Color_1"),Color("Color_2"),Color("Color_3"),Color("Color_4")]), startPoint: .leading, endPoint: .trailing)).cornerRadius(5).offset(y:-30).shadow(radius:25)
            
        }
    }
}

struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        SignupView()
    }
}
