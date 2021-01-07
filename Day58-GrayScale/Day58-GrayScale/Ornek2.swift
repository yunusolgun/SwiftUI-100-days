//
//  Ornek2.swift
//  Day58-GrayScale
//
//  Created by yunus olgun on 7.01.2021.
//

import SwiftUI

struct Ornek2: View {
    private var dereceler1 = [-1, 0, 0.75, 1.1]
    private var dereceler2 = [1.5, 3, 5, 20]
    
    var body: some View {
        VStack(spacing:20) {
            Text("GrayScale Örnek - 2").font(.largeTitle)
            Text("GrayScale ve Görüntü").font(.title).foregroundColor(.gray)
            ForEach(0..<dereceler1.count, id:\.self) { sayac in
                HStack {
                    Image("manzara").grayscale(self.dereceler1[sayac]).overlay(Text("\(String(self.dereceler1[sayac]))").foregroundColor(.red))
                    
                    Image("manzara").grayscale(self.dereceler2[sayac]).overlay(Text("\(String(self.dereceler2[sayac]))").foregroundColor(.white))
                }
            }
        }.font(.largeTitle)
    }
}

struct Ornek2_Previews: PreviewProvider {
    static var previews: some View {
        Ornek2()
    }
}
