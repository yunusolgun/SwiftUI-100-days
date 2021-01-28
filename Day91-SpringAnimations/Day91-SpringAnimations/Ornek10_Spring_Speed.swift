//
//  Ornek10_Spring_Speed.swift
//  Day91-SpringAnimations
//
//  Created by yunus olgun on 28.01.2021.
//

import SwiftUI

struct Ornek10_Spring_Speed: View {
    @State private var change = false
    
    var body: some View {
        ZStack {
            RadialGradient(gradient: Gradient(colors: [Color("Dark"), Color("Darkest")]), center: .center, startRadius: 10, endRadius: 400).edgesIgnoringSafeArea(.all)
            
            
            VStack(spacing:20) {
                Text("Spring Seçenekleri").foregroundColor(Color("Gold")).font(.largeTitle)
                Text("Speed - Hız").foregroundColor(.gray)
                
                Button("Başlat") { self.change.toggle() }.foregroundColor(.blue)
                
                Text("Speed metodu çalıştırılmadı").italic()
                Circle()
                    .fill(Color("Gold"))
                    .frame(height:70)
                    .offset(x: change ? 170 : -170)
                    .animation(Animation.spring(response: 0.5, dampingFraction: 0.6))
                
                Text("2x hızlı").italic()
                Circle()
                    .fill(Color("Gold"))
                    .frame(height:70)
                    .offset(x: change ? 170 : -170)
                    .animation(Animation.spring(response: 0.5, dampingFraction: 0.6).speed(2))
                
                Text("2x yavaş").italic()
                Circle()
                    .fill(Color("Gold"))
                    .frame(height:70)
                    .offset(x: change ? 170 : -170)
                    .animation(Animation.spring(response: 0.5, dampingFraction: 0.6).speed(0.5))
                
                
                
                
            }.font(.title).foregroundColor(Color("Gold"))
            
        }
        
    }
}

struct Ornek10_Spring_Speed_Previews: PreviewProvider {
    static var previews: some View {
        Ornek10_Spring_Speed()
    }
}
