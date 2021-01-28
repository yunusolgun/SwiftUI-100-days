//
//  Ornek1_SpringAnimationsGiris.swift
//  Day91-SpringAnimations
//
//  Created by yunus olgun on 27.01.2021.
//

import SwiftUI

struct Ornek1_SpringAnimationsGiris: View {
    @State private var show = false
    @State private var dampingFraction = 0.8
    
    
    var body: some View {
        ZStack {
            RadialGradient(gradient: Gradient(colors: [Color("Dark"), Color("Darkest")]), center: .center, startRadius: 10, endRadius: 400)
            
            VStack(spacing:20) {
                Text("Spring Animation").foregroundColor(Color("Gold")).font(.largeTitle)
                Text("Giriş").foregroundColor(.gray)
                
                RoundedRectangle(cornerRadius: 40)
                    .fill(Color("Gold"))
                    .overlay(Image("manzara"))
                    .padding()
                    .scaleEffect(show ? 1: 0.01, anchor: .bottom)
                    .opacity(show ? 1: 0)
                    .animation(.spring( dampingFraction: self.dampingFraction))
                
                
                Button(action: { self.show.toggle() }, label: {
                    Image(systemName: self.show ? "person.2.fill" : "person.2")
                        .foregroundColor(Color("Gold")).font(.largeTitle)
                })
                
                
                HStack {
                    Image(systemName: "0.circle.fill")
                    Slider(value: $dampingFraction)
                    Image(systemName: "1.circle.fill")
                }.foregroundColor(Color("Gold")).padding()
                
                
            }.font(.title)
            
            
        }
    }
}

struct Ornek1_SpringAnimationsGiris_Previews: PreviewProvider {
    static var previews: some View {
        Ornek1_SpringAnimationsGiris()
    }
}
