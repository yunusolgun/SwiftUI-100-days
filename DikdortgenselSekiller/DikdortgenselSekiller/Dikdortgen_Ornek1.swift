//
//  Dikdortgen_Ornek1.swift
//  DikdortgenselSekiller
//
//  Created by yunus olgun on 1.01.2021.
//

import SwiftUI

struct Dikdortgen_Ornek1: View {
    var body: some View {
        VStack(spacing:20) {
            Text("Rectangular Örnek - 1").font(.largeTitle)
            
            Text("Dikdörtgen")
            Rectangle().padding()
            
            Text("Rounded Rectangle")
            RoundedRectangle(cornerRadius: 20).padding()
            
            Text("Köşeleri yuvarlak dikdörtgen")
            Rectangle().cornerRadius(20).padding()
            
            RoundedRectangle(cornerRadius: 20).fill(Color.purple).padding()
            
            Rectangle().foregroundColor(.blue).padding()
            
            RoundedRectangle(cornerRadius: .infinity).padding().background(Color.blue).foregroundColor(.pink)
            
        }
    }
}

struct Dikdortgen_Ornek1_Previews: PreviewProvider {
    static var previews: some View {
        Dikdortgen_Ornek1()
    }
}
