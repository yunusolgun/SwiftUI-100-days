//
//  Frame_Ornek1.swift
//  Day36-Frame
//
//  Created by yunus olgun on 3.01.2021.
//

import SwiftUI

struct Frame_Ornek1: View {
    var body: some View {
        VStack(spacing:20) {
            Text("Frame Örnek - 1").font(.largeTitle)
            
            Text("Orjinal boyut")
            Image("manzara")
            
            Text("Genişlik ve yükseliği belirleyerek")
            HStack {
                Image("manzara").resizable().frame(width: 100, height: 100)
                Image("manzara").resizable().frame(width: 75, height: 75)
                Image("manzara").resizable().frame(width: 50, height: 50)
            }
            
            Image("manzara").resizable().aspectRatio(1, contentMode: .fit).frame(height: 100)
            
            Image("manzara").resizable().frame(width: 300, height: 110)
        }
    }
}

struct Frame_Ornek1_Previews: PreviewProvider {
    static var previews: some View {
        Frame_Ornek1()
    }
}
