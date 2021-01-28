//
//  Ornek11_Spring_Repeat.swift
//  Day91-SpringAnimations
//
//  Created by yunus olgun on 28.01.2021.
//

import SwiftUI

struct Ornek11_Spring_Repeat: View {
    @State private var change = false
    
    var body: some View {
        ZStack {
            RadialGradient(gradient: Gradient(colors: [Color("Dark"), Color("Darkest")]), center: .center, startRadius: 10, endRadius: 400).edgesIgnoringSafeArea(.all)
            
            
            VStack(spacing:20) {
                Text("Spring Seçenekleri").foregroundColor(Color("Gold")).font(.largeTitle)
                Text("Repeat Modu").foregroundColor(.gray)
                
                Button("Başlat") { self.change.toggle() }.foregroundColor(.blue)
                
                Group {
                    Text("dampingFraction = 0")
                    Text("(Spring Animation)").font(.body).foregroundColor(.white)
                    Circle().fill(Color("Gold"))
                        .frame(height:70)
                        .offset(x: change ? 40 : -40)
                        .animation(Animation.spring(response: 1, dampingFraction: 0))
                    
                    Text("dampingFraction = 0")
                    Text("(Interpolating Animation)").font(.body).foregroundColor(.white)
                    Circle().fill(Color("Gold"))
                        .frame(height:70)
                        .offset(x: change ? 40 : -40)
                        .animation(Animation.interpolatingSpring(stiffness: 40, damping: 0))
                    
                    
                    Text("3 defa tekrarla")
                    Circle().fill(Color("Gold"))
                        .frame(height:70)
                        .offset(x: change ? 40 : -40)
                        .animation(Animation.spring(response: 0.5, dampingFraction: 0.5).repeatCount(3))
                    
                    
                    Text("Sürekli tekrarla")
                    Circle().fill(Color("Gold"))
                        .frame(height:70)
                        .offset(x: change ? 40 : -40)
                        .animation(Animation.spring(response: 0.5, dampingFraction: 0.5).repeatForever())
                    
                    
                }
                
                
            }.font(.title).foregroundColor(Color("Gold"))
            
            
        }
        
        
    }
}

struct Ornek11_Spring_Repeat_Previews: PreviewProvider {
    static var previews: some View {
        Ornek11_Spring_Repeat()
    }
}
