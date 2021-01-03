//
//  AspectRatio_Ornek1.swift
//  Day33-AspectRatio
//
//  Created by yunus olgun on 3.01.2021.
//

import SwiftUI

struct AspectRatio_Ornek1: View {
    var body: some View {
        VStack(spacing:20){
            Text("Aspect Ratio Örnek - 1").font(.largeTitle)
            Text("Giriş").font(.title).foregroundColor(.gray)
            
            Text("Orjinal Görüntü (1:1)")
            Image("AspectRatio").frame(height:60)
            
            Text("Genişlik Yüksekliğin yarısı (1:2)")
            Image("AspectRatio").resizable().frame(height:60).aspectRatio(0.5, contentMode: .fit)
            
            Text("Genişlik Yüksekliğin iki katı (2:1)")
            Image("AspectRatio").resizable().frame(height:60).aspectRatio(2, contentMode: .fit)
            
            Text("Genişlik Yüksekliğin üç katı (3:1)")
            Image("AspectRatio").resizable().frame(height:60).aspectRatio(3, contentMode: .fit)
            
        }
    }
}

struct AspectRatio_Ornek1_Previews: PreviewProvider {
    static var previews: some View {
        AspectRatio_Ornek1()
    }
}
