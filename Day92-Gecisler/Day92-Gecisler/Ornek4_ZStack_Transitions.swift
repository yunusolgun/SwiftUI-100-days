//
//  Ornek4_ZStack_Transitions.swift
//  Day92-Gecisler
//
//  Created by yunus olgun on 30.01.2021.
//

import SwiftUI

struct Ornek4_ZStack_Transitions: View {
    @State private var show = false
    
    var body: some View {
        ZStack {
            Color("Dark").edgesIgnoringSafeArea(.all)
            
            VStack(spacing:20) {
                Text("Transitions").foregroundColor(.white).font(.largeTitle)
                Text("ZStack Problemi ve Çözümü").foregroundColor(.gray)
                
                Button("Show") { self.show.toggle() }
                
                
                
            }.blur(radius: show ? 10 : 0)
            
            if show {
                VStack {
                    Image ("cartman")
                    Button("Kapat") {
                        withAnimation(.easeIn) {
                            self.show = false
                        }
                    }.padding(.top,30)
                }.padding()
                .background(RoundedRectangle(cornerRadius: 10).fill(Color("Darkest")).shadow(radius: 20))
                .transition(.slide)
                .animation(.default)
                .zIndex(1)
               
            }
            
        }.font(.title)
    }
}

struct Ornek4_ZStack_Transitions_Previews: PreviewProvider {
    static var previews: some View {
        Ornek4_ZStack_Transitions()
    }
}
