//
//  Position_Ornek2.swift
//  Day42-Position
//
//  Created by yunus olgun on 4.01.2021.
//

import SwiftUI

struct Position_Ornek2: View {
    var body: some View {
        VStack(spacing:20) {
            Text("Position Örnek - 2").font(.largeTitle)
            Text("Position ve GeometryReader").font(.title).foregroundColor(.gray)
            
            Text("Position metoduna göndermeniz gereken değerleri Geometry Reader'dan almanız daha sağlıklı sonuç verecektir.").frame(maxWidth:.infinity).padding().font(.title).background(Color.pink).layoutPriority(1).foregroundColor(.white)
            
            GeometryReader { gr in
                ZStack {
                    Image(systemName: "1.circle.fill").foregroundColor(.yellow).position(x: 20, y: 20)
                    Image(systemName: "2.circle.fill").foregroundColor(.red).position(x: gr.size.width - 20, y: 20)
                    Image(systemName: "3.circle.fill").foregroundColor(.blue).position(x: 20, y: gr.size.height - 20)
                    Image(systemName: "4.circle.fill").foregroundColor(.green).position(x: gr.size.width - 20, y: gr.size.height - 20)
                }
            }.font(.title).border(Color.purple,width: 6)
            
        }
    }
}

struct Position_Ornek2_Previews: PreviewProvider {
    static var previews: some View {
        Position_Ornek2()
    }
}
