//
//  Ornek1.swift
//  Day46-AccentColor
//
//  Created by yunus olgun on 5.01.2021.
//

import SwiftUI

struct Ornek1: View {
    @State private var sliderDeger = 0.5
    
    var boyutlar = ["Küçük","Orta","Büyük"]
    @State private var secilenBoyut = 0
    
    var body: some View {
        VStack(spacing:20) {
            Text("Accent Color Örnek - 1").font(.largeTitle)
            Text("Giriş").foregroundColor(.gray)
            Text("AccentColor genelde kullanıcının etkileşime girebildiği nesneleri renkledirmek için kullanılıyor. Varsayılan rengi mavidir.").frame(maxWidth:.infinity).padding().background(Color.purple).foregroundColor(.white)
            
            Group {
                Button("Varsayılan buton rengi", action: {})
                Button("Kırmızı renkli buton", action: {}).accentColor(.red)
                Button(action: {}) {
                    Image(systemName: "bag.fill.badge.plus")
                    Text("Sepete ekle").padding(.leading,5)
                }.accentColor(.red)
            }
            
            Group {
                Text("Varsayılan slider rengi")
                Slider(value: $sliderDeger).padding(.horizontal,10)
                
                Text("Kırmızı renkli slider")
                Slider(value: $sliderDeger).padding(.horizontal,10).accentColor(.red)
            }
            
            Picker(selection: $secilenBoyut, label: Text("Boyutlar")) {
                ForEach(0..<boyutlar.count) {
                    Text(self.boyutlar[$0]).foregroundColor(.blue)
                }
            }.accentColor(.red)
            
            Image(systemName: "gauge").foregroundColor(.red)
            
        }
    }
}

struct Ornek1_Previews: PreviewProvider {
    static var previews: some View {
        Ornek1()
    }
}
