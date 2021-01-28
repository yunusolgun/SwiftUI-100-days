//
//  Ornek9_Spring_Delay.swift
//  Day91-SpringAnimations
//
//  Created by yunus olgun on 28.01.2021.
//

import SwiftUI

struct Ornek9_Spring_Delay: View {
    @State private var show = false
    @State private var largeScale : CGFloat = 5
    
    var body: some View {
        ZStack {
            RadialGradient(gradient: Gradient(colors: [Color("Dark"), Color("Darkest")]), center: .center, startRadius: 10, endRadius: 400).edgesIgnoringSafeArea(.all)
            
            
            VStack(spacing:20) {
                Text("Spring Seçenekleri").foregroundColor(Color("Gold")).font(.largeTitle)
                Text("Delay - Gecikme").foregroundColor(.gray)
                
                Button("Başlat") { self.show.toggle() }
                
                Spacer()
                
                HStack(spacing: 30) {
                    Group {
                        Image(systemName: "1.circle")
                            .opacity(show ? 1 : 0)
                            .scaleEffect(show ? 1 : largeScale)
                            .animation(.spring(response: 0.4, dampingFraction: 0.5))
                        
                        Image(systemName: "2.circle")
                            .opacity(show ? 1 : 0)
                            .scaleEffect(show ? 1 : largeScale)
                            .animation(Animation.spring(response: 0.4, dampingFraction: 0.5).delay(0.5))
                        
                        Image(systemName: "3.circle")
                            .opacity(show ? 1 : 0)
                            .scaleEffect(show ? 1 : largeScale)
                            .animation(Animation.spring(response: 0.4, dampingFraction: 0.5).delay(1))
                        
                    }.foregroundColor(Color("Gold")).font(.system(size: 100))
                }
                
                Spacer()
                
                
            }.font(.title).accentColor(.white)
            
        }
        
    }
}

struct Ornek9_Spring_Delay_Previews: PreviewProvider {
    static var previews: some View {
        Ornek9_Spring_Delay()
    }
}
