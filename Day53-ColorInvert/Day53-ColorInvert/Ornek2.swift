//
//  Ornek2.swift
//  Day53-ColorInvert
//
//  Created by yunus olgun on 6.01.2021.
//

import SwiftUI

struct Ornek2: View {
    var body: some View {
        VStack(spacing:20){
            Text("Color Invert Örnek - 2").font(.largeTitle)
            HStack {
                Spacer()
                Text("Orjinal Görüntü")
                Spacer()
                Text("Ters Görüntü")
                Spacer()
            }
            
            HStack {
                Image("manzara").resizable().frame(width: 200, height: 150)
                Image("manzara").resizable().frame(width: 200, height: 150).colorInvert()
            }
            
            Button(action: {}) {
                Text("Tıkla")
            }.colorInvert()
            
            Text("Merhaba").font(.title).foregroundColor(.pink).colorInvert()
            
        }
    }
}

struct Ornek2_Previews: PreviewProvider {
    static var previews: some View {
        Ornek2()
    }
}
