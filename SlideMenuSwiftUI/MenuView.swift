//
//  MenuView.swift
//  SlideMenuSwiftUI
//
//  Created by Nelson Gonzalez on 2/12/20.
//  Copyright © 2020 Nelson Gonzalez. All rights reserved.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        VStack(spacing: 35) {
            
            Button(action: {
                
            }) {
                VStack(spacing: 8) {
                    Image(systemName: "bubble.left").renderingMode(.original).resizable().frame(width: 55, height: 55)
                    Text("Chats")
                }
            }
            
            Button(action: {
                
            }) {
                VStack(spacing: 8) {
                    Image(systemName: "heart").renderingMode(.original).resizable().frame(width: 55, height: 55)
                    Text("Likes")
                }
            }
            
            Button(action: {
                
            }) {
                VStack(spacing: 8) {
                    Image(systemName: "star").renderingMode(.original).resizable().frame(width: 55, height: 55)
                    Text("Favorites")
                }
            }
            
            Button(action: {
                
            }) {
                VStack(spacing: 8) {
                    Image(systemName: "camera").renderingMode(.original).resizable().frame(width: 55, height: 55)
                    Text("Camera")
                }
            }
            
            Spacer(minLength: 15)
            
        }.padding(35).foregroundColor(.black).background(Color("Color")).edgesIgnoringSafeArea(.bottom)
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
