//
//  Ornek3.swift
//  Day64-Rotation3DEffect
//
//  Created by yunus olgun on 10.01.2021.
//

import SwiftUI

struct Ornek3: View {
    @State private var dondurmeMiktari = 30.0
    
    var body: some View {
        VStack(spacing:20) {
            Text("Rotation3DEffect Örnek - 3").font(.largeTitle)
            Text("Z ekseninde döndürme").font(.title).foregroundColor(.gray).bold()
            RoundedRectangle(cornerRadius: 10).fill(Color.orange).overlay(Text("Z ekseninde 45°").font(.largeTitle).bold()).rotation3DEffect(
                .degrees(45),
                axis: (x: 0, y: 0, z: 1)
                ).opacity(0.7)
            
            RoundedRectangle(cornerRadius: 10).fill(Color.orange).overlay(Text("Z ekseninde -45°").font(.largeTitle).bold()).rotation3DEffect(
                .degrees(-45),
                axis: (x: 0, y: 0, z: 1)
                ).opacity(0.7)
            
            RoundedRectangle(cornerRadius: 10).fill(Color.orange).overlay(Text("Döndürme miktarını Slider ile ayarla").font(.largeTitle).bold()).rotation3DEffect(
                .degrees(dondurmeMiktari),
                axis: (x: 0, y: 0, z: 1)
                ).opacity(0.7)
            
            Slider(value: $dondurmeMiktari, in: -180...180, step:1).padding()
            
        }
    }
}

struct Ornek3_Previews: PreviewProvider {
    static var previews: some View {
        Ornek3()
    }
}
