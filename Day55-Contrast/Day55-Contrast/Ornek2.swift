//
//  Ornek2.swift
//  Day55-Contrast
//
//  Created by yunus olgun on 7.01.2021.
//

import SwiftUI

struct Ornek2: View {
    private var negatifDereceler = [-0.5, -0.75, -1, -1.25]
    private var pozitifDereceler = [2.5, 3, 5, 7]
    var body: some View {
        VStack(spacing:20) {
            Text("Contrast Örnek -2 ").font(.largeTitle)
            Text("Contrast ve Görüntü").font(.title).foregroundColor(.gray)
            
            
            
            HStack {
                
                ForEach(0..<negatifDereceler.count, id:\.self) { sayac in
                    Image("manzara").contrast(self.negatifDereceler[sayac]).overlay(Text("\(String(self.negatifDereceler[sayac]))").font(.largeTitle).foregroundColor(.red))
                }
                
                
           
                }
            
            HStack {
                ForEach(0..<pozitifDereceler.count, id:\.self) { sayac in
                    Image("manzara").contrast(self.pozitifDereceler[sayac]).overlay(Text("\(String(self.pozitifDereceler[sayac]))").font(.largeTitle).foregroundColor(.white))
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
