//
//  Ornek1.swift
//  Day76-RenderingMode
//
//  Created by yunus olgun on 14.01.2021.
//

import SwiftUI

struct Ornek1: View {
    var body: some View {
        VStack(spacing:20) {
            Text("Rendering mode örnek - 1").font(.largeTitle)
            Text("Rendering mode değerini template yarapak görüntüdeki tüm solid alanlara tek bir renk değeri atayabiliriz")
                .frame(maxWidth:.infinity)
                .padding()
                .background(Color.green)
                .foregroundColor(.white)
                .layoutPriority(2)
            
            
            Group {
                HStack {
                    Spacer()
                    Text("Görüntü")
                    Spacer()
                    Text("Vektör")
                    Spacer()
                }
                
                Text("Rendering mode:Orjinal")
                HStack {
                    Image("agac").renderingMode(.original).resizable().frame(width: 100, height: 100)
                    Image(systemName: "bolt.fill").renderingMode(.original).font(.system(size: 90))
                }
                
                Text("Rendering mode:Template")
                HStack {
                    Image("agac").renderingMode(.template).resizable().frame(width: 100, height: 100)
                    Image(systemName: "bolt.fill").renderingMode(.template).font(.system(size: 90))
                }
                
                Text("Rendering mode:Renklendirme")
                HStack {
                    Image("agac").renderingMode(.template).resizable().frame(width: 100, height: 100).foregroundColor(.red)
                    Image(systemName: "bolt.fill").font(.system(size: 90)).foregroundColor(.green)
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
