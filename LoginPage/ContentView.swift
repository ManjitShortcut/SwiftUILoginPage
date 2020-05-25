//
//  ContentView.swift
//  LoginPage
//
//  Created by Manjit on 25/05/2020.
//  Copyright © 2020 LoginPage. All rights reserved.
//

import SwiftUI
struct ContentView: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient: .init(colors: [Color("Color_1"),Color("Color_2"),Color("Color_3"),Color("Color_4")]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
            if UIScreen.main.bounds.height > 750 {
                HomePage()
            } else {
                ScrollView(.vertical, showsIndicators: false) {
                    HomePage()
                }
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
