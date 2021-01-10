//
//  Ornek1.swift
//  Day64-Rotation3DEffect
//
//  Created by yunus olgun on 10.01.2021.
//

import SwiftUI

struct Ornek1: View {
    @State private var dondurmeMiktari = 30.0
    
    var body: some View {
        VStack(spacing:20) {
            Text("Rotation3DEffect Örnek - 1").font(.largeTitle)
            Text("X ekseninde döndürme").font(.title).foregroundColor(.gray).bold()
            RoundedRectangle(cornerRadius: 10).fill(Color.orange).overlay(Text("X ekseninde 45°").font(.largeTitle).bold()).rotation3DEffect(
                .degrees(45),
                axis: (x: 1, y: 0, z: 0)
                )
            
            RoundedRectangle(cornerRadius: 10).fill(Color.orange).overlay(Text("X ekseninde -45°").font(.largeTitle).bold()).rotation3DEffect(
                .degrees(-45),
                axis: (x: 1, y: 0, z: 0)
                )
            
            RoundedRectangle(cornerRadius: 10).fill(Color.orange).overlay(Text("Döndürme miktarını Slider ile ayarla").font(.largeTitle).bold()).rotation3DEffect(
                .degrees(dondurmeMiktari),
                axis: (x: 1, y: 0, z: 0)
                )
            
            Slider(value: $dondurmeMiktari, in: -180...180, step:1).padding()
            
        }
    }
}

struct Ornek1_Previews: PreviewProvider {
    static var previews: some View {
        Ornek1()
    }
}
