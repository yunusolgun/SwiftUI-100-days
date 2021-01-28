//
//  Ornek8_Interpolating_SurekliAnimasyon.swift
//  Day91-SpringAnimations
//
//  Created by yunus olgun on 28.01.2021.
//

import SwiftUI

struct Ornek8_Interpolating_SurekliAnimasyon: View {
    @State private var degrees = 0.0
    @State private var taps = 0
    
    var body: some View {
        ZStack {
            RadialGradient(gradient: Gradient(colors: [Color("Dark"), Color("Darkest")]), center: .center, startRadius: 10, endRadius: 400).edgesIgnoringSafeArea(.all)
            
            
            VStack(spacing:20) {
                Text("Interpolating Spring").foregroundColor(Color("Gold")).font(.largeTitle)
                Text("Örnek").foregroundColor(.gray)
                
                Circle()
                    .fill(Color("Gold"))
                    .frame(width: 300, height: 300)
                    .overlay(Image(systemName: "arrow.up").offset(y: -120).font(.largeTitle))
                    .rotationEffect(.degrees(degrees))
                    .animation(.interpolatingSpring(stiffness: 1, damping: 0.8))
                    .onTapGesture {
                        self.degrees += 25
                        self.taps += 1
                    }
                
                Text("Taps: \(taps)").foregroundColor(Color("Gold"))
                Spacer()
                
            }.font(.title)
            
        }
        
    }
}

struct Ornek8_Interpolating_SurekliAnimasyon_Previews: PreviewProvider {
    static var previews: some View {
        Ornek8_Interpolating_SurekliAnimasyon()
    }
}
