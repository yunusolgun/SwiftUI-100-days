//
//  Ornek2.swift
//  Day64-Rotation3DEffect
//
//  Created by yunus olgun on 10.01.2021.
//

import SwiftUI

struct Ornek2: View {
    @State private var dondurmeMiktari = 30.0
    
    var body: some View {
        VStack(spacing:20) {
            Text("Rotation3DEffect Örnek - 2").font(.largeTitle)
            Text("Y ekseninde döndürme").font(.title).foregroundColor(.gray).bold()
            RoundedRectangle(cornerRadius: 10).fill(Color.orange).overlay(Text("Y ekseninde 45°").font(.largeTitle).bold()).rotation3DEffect(
                .degrees(45),
                axis: (x: 0, y: 1, z: 0)
                )
            
            RoundedRectangle(cornerRadius: 10).fill(Color.orange).overlay(Text("Y ekseninde -45°").font(.largeTitle).bold()).rotation3DEffect(
                .degrees(-45),
                axis: (x: 0, y: 1, z: 0)
                )
            
            RoundedRectangle(cornerRadius: 10).fill(Color.orange).overlay(Text("Döndürme miktarını Slider ile ayarla").font(.largeTitle).bold()).rotation3DEffect(
                .degrees(dondurmeMiktari),
                axis: (x: 0, y: 1, z: 0)
                )
            
            Slider(value: $dondurmeMiktari, in: -180...180, step:1).padding()
            
        }
    }
}

struct Ornek2_Previews: PreviewProvider {
    static var previews: some View {
        Ornek2()
    }
}
