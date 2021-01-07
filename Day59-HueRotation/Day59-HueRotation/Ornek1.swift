//
//  Ornek1.swift
//  Day59-HueRotation
//
//  Created by yunus olgun on 7.01.2021.
//

import SwiftUI

struct Ornek1: View {
    private var acikKirmizi = Color(hue: 1, saturation: 0.5, brightness: 1)
    private var koyuKirmizi = Color(hue: 1, saturation: 1, brightness: 0.5)
    
    var body: some View {
        VStack(spacing:20) {
            Text("Hue Rotation Örnek - 1").font(.largeTitle)
            Text("Hue rotation metodu, belrtilen rengi, renk paletinde saatin tersi yönünde dairesel olarak döndürür").frame(maxWidth:.infinity).padding().background(Color.orange).foregroundColor(.white).font(.title)
            
            Text("Açık Kırmızı")
            HStack {
                acikKirmizi.frame(width: 50, height: 50).overlay(Text("0"))
                acikKirmizi.frame(width: 50, height: 50).hueRotation(.degrees(45)).overlay(Text("45"))
                acikKirmizi.frame(width: 50, height: 50).hueRotation(.degrees(90)).overlay(Text("90"))
                acikKirmizi.frame(width: 50, height: 50).hueRotation(.degrees(180)).overlay(Text("180"))
                acikKirmizi.frame(width: 50, height: 50).hueRotation(.degrees(270)).overlay(Text("270"))
                acikKirmizi.frame(width: 50, height: 50).hueRotation(.degrees(360)).overlay(Text("360"))
            }
            
            Text("Kırmızı")
            HStack {
                Color.red.frame(width: 50, height: 50).overlay(Text("0"))
                Color.red.frame(width: 50, height: 50).hueRotation(.degrees(45)).overlay(Text("45"))
                Color.red.frame(width: 50, height: 50).hueRotation(.degrees(90)).overlay(Text("90"))
                Color.red.frame(width: 50, height: 50).hueRotation(.degrees(180)).overlay(Text("180"))
                Color.red.frame(width: 50, height: 50).hueRotation(.degrees(270)).overlay(Text("270"))
                Color.red.frame(width: 50, height: 50).hueRotation(.degrees(360)).overlay(Text("360"))
            }
            
            Text("Koyu Kırmızı")
            HStack {
                koyuKirmizi.frame(width: 50, height: 50).overlay(Text("0"))
                koyuKirmizi.frame(width: 50, height: 50).hueRotation(.degrees(45)).overlay(Text("45"))
                koyuKirmizi.frame(width: 50, height: 50).hueRotation(.degrees(90)).overlay(Text("90"))
                koyuKirmizi.frame(width: 50, height: 50).hueRotation(.degrees(180)).overlay(Text("180"))
                koyuKirmizi.frame(width: 50, height: 50).hueRotation(.degrees(270)).overlay(Text("270"))
                koyuKirmizi.frame(width: 50, height: 50).hueRotation(.degrees(360)).overlay(Text("360"))
            }
            
            
        }
    }
}

struct Ornek1_Previews: PreviewProvider {
    static var previews: some View {
        Ornek1()
    }
}
