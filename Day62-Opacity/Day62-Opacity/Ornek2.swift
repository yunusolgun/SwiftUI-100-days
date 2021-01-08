//
//  Ornek2.swift
//  Day62-Opacity
//
//  Created by yunus olgun on 8.01.2021.
//

import SwiftUI

struct Ornek2: View {
    var body: some View {
        VStack(spacing:20) {
            Text("Opacity Örnek - 2").font(.largeTitle)
            Text("Opacitiy ve Layer").foregroundColor(.gray).font(.title)
            
            Text("Opacity sadece içeriğe uygulandı")
            Image("manzara").resizable().scaledToFit().frame(width:250).opacity(0.3).background(Color.orange)
            
            Text("Opacity tüm katmanlara uygulandı")
            Image("manzara").resizable().scaledToFit().frame(width:250).background(Color.orange).opacity(0.3)
            
            Text("Opacity Overlay nesnesine uygulandı")
            Image("manzara").resizable().scaledToFit().frame(width:250).overlay(Color.orange.opacity(0.3))
            
        }
    }
}

struct Ornek2_Previews: PreviewProvider {
    static var previews: some View {
        Ornek2()
    }
}
