//
//  Position_Ornek1.swift
//  Day42-Position
//
//  Created by yunus olgun on 4.01.2021.
//

import SwiftUI

struct Position_Ornek1: View {
    var body: some View {
        VStack(spacing:20) {
            Text("Position Örnek - 1").font(.largeTitle)
            Text("Giriş").foregroundColor(.gray)
            Text("Position metodu uygulanmadı").border(Color.purple,width: 3)
            
            Text("Position metodu uygulandı").position(x: 200, y: 70).border(Color.purple,width: 5)
            
            Text("Üstteki metin geriye kalan tüm boşluğu kaplamaya çalışıyor").frame(maxWidth:.infinity).padding().background(Color.purple).foregroundColor(.white)
            
            Image("XY_Koordinat")
            
            ZStack {
                Text("45, 15").position(x: 45, y: 15)
                Text("340, 15").position(x: 340, y: 15)
                Text("50, 100").position(x: 50, y: 100)
                Text("335, 100").position(x: 335, y: 100)
                Text("180, 60").position(x: 180, y: 60)
            }.border(Color.red,width: 3)
            
        }.font(.title)
    }
}

struct Position_Ornek1_Previews: PreviewProvider {
    static var previews: some View {
        Position_Ornek1()
    }
}
