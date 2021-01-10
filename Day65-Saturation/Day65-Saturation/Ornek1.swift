//
//  Ornek1.swift
//  Day65-Saturation
//
//  Created by yunus olgun on 10.01.2021.
//

import SwiftUI

struct Ornek1: View {
    private var dereceler = [-1, 0, 0.1, 0.5, 1, 2, 3.5, 5]
    private var renkler: [Color] = [.pink, .purple, .orange, .green, .blue, .yellow, .black, .white]
    
    var body: some View {
        VStack(spacing:20) {
            Text("Saturation Örnek - 1").font(.largeTitle)
            Text("Saturation ve Renkler").font(.title).foregroundColor(.gray)
            
            ForEach(renkler, id:\.self) { renk in
                HStack {
                    renk.frame(width:50, height:50).overlay(Text("Orjinal")).foregroundColor(.white)
                    
                    ForEach(self.dereceler, id:\.self) { derece in
                        renk
                            .frame(width:50, height:50)
                            .saturation(derece)
                            .overlay(Text("\(String(format: "%.1f", derece))"))
                            .foregroundColor(.white)
                            
    
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
