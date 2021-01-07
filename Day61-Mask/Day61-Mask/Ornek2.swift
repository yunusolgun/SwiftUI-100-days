//
//  Ornek2.swift
//  Day61-Mask
//
//  Created by yunus olgun on 7.01.2021.
//

import SwiftUI

struct Ornek2: View {
    @State private var paddingMiktariAlt: Double = 50
    var body: some View {
        VStack(spacing:20){
            Text("Mask Örnek - 2").font(.largeTitle)
            Text("Şekiller (Shapes) ve Padding").font(.largeTitle).foregroundColor(.gray)
            Text("Şekillere padding uygulayarak maskelemek istediğimiz view'in çok daha az kısmını maskaleyebiliriz.").frame(maxWidth:.infinity).padding().background(Color.orange).foregroundColor(.white).font(.title)
            
            Image("manzara").mask(Rectangle().padding(.bottom,CGFloat(paddingMiktariAlt)))
            
            Slider(value: $paddingMiktariAlt, in: 0...125)
        }
    }
}

struct Ornek2_Previews: PreviewProvider {
    static var previews: some View {
        Ornek2()
    }
}
