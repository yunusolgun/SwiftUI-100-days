//
//  Ornek2.swift
//  Day59-HueRotation
//
//  Created by yunus olgun on 7.01.2021.
//

import SwiftUI

struct Ornek2: View {
    var body: some View {
        VStack(spacing:20) {
            Text("Hue Rotation Örnek - 2").font(.largeTitle)
            Text("Hue Rotation ve görüntüler").font(.title).foregroundColor(.gray)
            Image("manzara").resizable().scaledToFit().frame(height:150).overlay(Text("0"))
            Image("manzara").resizable().scaledToFit().frame(height:150).overlay(Text("90")).hueRotation(.degrees(90))
            Image("manzara").resizable().scaledToFit().frame(height:150).overlay(Text("180")).hueRotation(.degrees(180))
            Image("manzara").resizable().scaledToFit().frame(height:150).overlay(Text("270")).hueRotation(.degrees(270))
        }.font(.title).foregroundColor(.white)
    }
}

struct Ornek2_Previews: PreviewProvider {
    static var previews: some View {
        Ornek2()
    }
}
