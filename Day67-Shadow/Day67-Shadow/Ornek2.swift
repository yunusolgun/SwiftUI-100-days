//
//  Ornek2.swift
//  Day67-Shadow
//
//  Created by yunus olgun on 11.01.2021.
//

import SwiftUI

struct Ornek2: View {
    var body: some View {
        VStack(spacing:20) {
            Text("Shadow Örnek - 2").font(.largeTitle)
            Group {
                Circle().fill(Color.blue).shadow(radius: 2,x: 8,y: -8).overlay(Text("x:8, y:-8"))
                Circle().fill(Color.blue).shadow(radius: 2,x: 8,y: 8).overlay(Text("x:8, y:8"))
                Circle().fill(Color.blue).shadow(radius: 2,x: -8,y: 8).overlay(Text("x:-8, y:8"))
                Circle().fill(Color.blue).shadow(radius: 2,x: -8,y: -8).overlay(Text("x:-8, y:-8"))
            }.foregroundColor(.white).font(.title)
        }
    }
}

struct Ornek2_Previews: PreviewProvider {
    static var previews: some View {
        Ornek2()
    }
}
