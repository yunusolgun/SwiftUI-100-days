//
//  Ornek1.swift
//  Day63-RotationEffect
//
//  Created by yunus olgun on 8.01.2021.
//

import SwiftUI

struct Ornek1: View {
    
    @State private var dondurmeMiktari: Double = 0
    
    let timer  = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        
        
        VStack(spacing:20){
            Text("Rotation Effect Örnek - 1").font(.largeTitle)
            Text("Giriş").font(.title).foregroundColor(.gray)
            
            HStack {
                Text("-90°").rotationEffect(.degrees(-90))
                Text("-45°").rotationEffect(.degrees(-45))
                Text("0°").rotationEffect(.degrees(0))
                Text("45°").rotationEffect(.degrees(45))
                Text("90°").rotationEffect(.degrees(90))
            }.font(.largeTitle).padding()
            
            Divider()
            
            Text("RotationEffect fonksiyonu")
                .font(.custom("Nightcall", size: 33))
                .rotationEffect(.degrees(dondurmeMiktari))
                .border(Color.green,width: 4)
                .padding(.top,60)
            
            Slider(value: $dondurmeMiktari, in: -180...180, step: 1).padding()
            
            
        }.onReceive(timer, perform: { _ in
            self.dondurmeMiktari = self.dondurmeMiktari >= 360 ? 0: (self.dondurmeMiktari + 30)
        })
    }
}

struct Ornek1_Previews: PreviewProvider {
    static var previews: some View {
        Ornek1()
    }
}
