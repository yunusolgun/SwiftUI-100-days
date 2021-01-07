//
//  Ornek1.swift
//  Day55-Contrast
//
//  Created by yunus olgun on 7.01.2021.
//

import SwiftUI

struct Ornek1: View {
    private var dereceler = [-1,-0.5,0,0.5,1,2,3.5,5]
    private var renkler:[Color] = [.pink,.purple,.orange,.gray,.white,.black]
    var body: some View {
        VStack {
            Text("Contrast Örnek - 1").font(.largeTitle)
            Text("Negatif kontrast değeri rengin zıttını getirir. Pozitif değerlerse o rengi daha koyu hale getirir. Varsayılan değeri :1").font(.title).frame(maxWidth:.infinity).padding().background(Color.orange).foregroundColor(.white)
            
            
            HStack {
                Spacer()
                Text("Orjinal renk")
                Spacer()
                Text("Contrast negatif")
                Spacer()
                Text("Contast pozitif")
                Spacer()
                Text("Color Invert")
                Spacer()
            }
            
            HStack {
                Spacer()
                Color.red
                Spacer()
                Color.red.contrast(-2)
                Spacer()
                Color.red.contrast(5)
                Spacer()
                Color.red.colorInvert()
                Spacer()
            }
            
            ForEach(renkler, id:\.self) { renk in
                HStack {
                    renk.frame(width: 100, height: 100).overlay(Text("Orjinal"))
                    ForEach(self.dereceler, id:\.self) { derece in
                        renk.frame(width: 100, height: 100).contrast(derece).overlay(Text("\(String(derece))"))
                    }
                }
            }
            
        }
    }
}

struct Ornek1_Previews: PreviewProvider {
    static var previews: some View {
        Ornek1()
    }
}
