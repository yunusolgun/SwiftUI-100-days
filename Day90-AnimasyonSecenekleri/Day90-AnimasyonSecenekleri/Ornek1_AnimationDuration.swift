//
//  Ornek1_AnimationDuration.swift
//  Day90-AnimasyonSecenekleri
//
//  Created by yunus olgun on 25.01.2021.
//

import SwiftUI

struct Ornek1_AnimationDuration: View {
    @State private var change = false
    
    var body: some View {
        VStack(spacing:20) {
            Text("Animasyon seçenekleri").font(.largeTitle)
            Text("Duration parametresi").foregroundColor(.gray)
            
            Text("Duration: Default")
            Image(systemName: "hare.fill")
                .foregroundColor(.purple)
                .frame(width: 100, height: 100)
                .offset(x: change ? 150 : -150 , y: 0)
                .animation(.easeOut)
            
            Text("Duration: 2 Seconds")
            Image(systemName: "tortoise.fill")
                .foregroundColor(.purple)
                .frame(width: 100, height: 100)
                .offset(x: change ? 150 : -150 , y: 0)
                .animation(.easeOut(duration: 2))
            
            Button("KOŞ!") {
                self.change.toggle()
            }
            
            
            
            
        }.font(.title)
        
    }
}

struct Ornek1_AnimationDuration_Previews: PreviewProvider {
    static var previews: some View {
        Ornek1_AnimationDuration()
    }
}
