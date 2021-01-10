//
//  Ornek2.swift
//  Day65-Saturation
//
//  Created by yunus olgun on 10.01.2021.
//

import SwiftUI

struct Ornek2: View {
    private var dereceler1 = [-1, 0, 0.75, 1]
    private var dereceler2 = [1.5, 3, 5, 20]
    
    var body: some View {
        VStack(spacing:20) {
            Text("Saturation Örnek - 2").font(.largeTitle)
            Text("Saturation ve Görüntüler").font(.title).foregroundColor(.gray)
            
            ForEach(0..<dereceler1.count, id: \.self) { sayac in
                HStack {
                    Image("manzara").resizable().frame(width: 200, height: 100)
                        .saturation(self.dereceler1[sayac]).overlay(Text("\(String(self.dereceler1[sayac]))")).font(.largeTitle).foregroundColor(.red)
                    
                    Image("manzara").resizable().frame(width: 200, height: 100)
                        .saturation(self.dereceler2[sayac]).overlay(Text("\(String(self.dereceler2[sayac]))")).font(.largeTitle).foregroundColor(.red)
                }
            }
            
        }
    }
}

struct Ornek2_Previews: PreviewProvider {
    static var previews: some View {
        Ornek2()
    }
}
