//
//  ContentView.swift
//  SlideMenuSwiftUI
//
//  Created by Nelson Gonzalez on 2/12/20.
//  Copyright © 2020 Nelson Gonzalez. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var show = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Text("Hello, World!")
                GeometryReader { _ in
                    HStack {
                        MenuView().offset(x: self.show ? 0 : -UIScreen.main.bounds.width).animation(.default)
                        Spacer()
                    }
                }.background(Color.black.opacity(self.show ? 0.5 : 0)).edgesIgnoringSafeArea(.bottom).onTapGesture {
                    self.show = false
                }
                
            }.navigationBarTitle("Home", displayMode: .inline).navigationBarItems(leading: Button(action: {
                self.show.toggle()
            }, label: {
                if self.show {
                    Image(systemName: "arrow.left").font(.body).foregroundColor(.black)
                } else {
                    Image(systemName: "line.horizontal.3")
                    
                }
            }))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
