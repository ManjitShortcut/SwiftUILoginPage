//
//  HomePage.swift
//  LoginPage
//
//  Created by Manjit on 25/05/2020.
//  Copyright © 2020 LoginPage. All rights reserved.
//

import Foundation
import SwiftUI
struct HomePage: View {
    @State var index = 0
    var body: some View {
        VStack {
            Image("logo").resizable().frame(width: 200, height: 200)
            HStack{
                Button(action: {
                    withAnimation(.spring(response: 0.8, dampingFraction: 0.5, blendDuration: 0.5)){
                        self.index = 0
                    }
                }){
                    Text("Existing")
                        .foregroundColor(self.index == 0 ?.black:.white)
                        .fontWeight(.bold)
                        .padding(.vertical,10)
                        .frame(width:(UIScreen.main.bounds.width-50)/2)
                }.background(self.index == 0 ? Color.white : Color.clear).clipShape(Capsule())
                Button(action: {
                    withAnimation(.spring(response: 0.8, dampingFraction: 0.5, blendDuration: 0.5)){
                        self.index = 1
                    }
                }){
                    Text("New")
                        .foregroundColor(self.index == 1 ?.black:.white)
                        .fontWeight(.bold)
                        .padding(.vertical,10)
                        .frame(width:(UIScreen.main.bounds.width-50)/2)
                }.background(self.index == 1 ? Color.white:Color.clear).clipShape(Capsule())
            }
            if  self.index == 0 {
                LoginView()
            } else{
                SignupView()
            }
            
            Button(action: {
                
            }) {
                Text("Forgot Password")
                    .foregroundColor(Color.white)
                    .fontWeight(.heavy)
                    .padding(.top,10)
            }
            HStack {
                Color.white.opacity(0.7).frame(width:20, height: 1)
                Text("OR").foregroundColor(Color.white).fontWeight(.bold)
                Color.white.opacity(0.7).frame(width:20, height: 1)
            }.padding(.top,5)
            HStack(spacing:10){
                Button(action: {
                }) {
                    Image(systemName:"folder").resizable().frame(width:40, height:40).foregroundColor(.black).padding()
                }.background(Color.white).clipShape(Circle())
                Button(action: {
                    
                }) {
                    Image(systemName:"folder").resizable().frame(width:40, height:40).foregroundColor(.black).padding()
                }.background(Color.white).clipShape(Circle())
            }
        }.padding()
    }
}
struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
