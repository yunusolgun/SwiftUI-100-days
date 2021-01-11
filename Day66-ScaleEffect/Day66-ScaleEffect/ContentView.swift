//
//  ContentView.swift
//  Day66-ScaleEffect
//
//  Created by yunus olgun on 11.01.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing:20) {
            Text("ScaleEffect Örnek - 2").font(.largeTitle)
            Text("Scale X ve Y eksenleri").font(.title).foregroundColor(.gray)
            
            Text("YATAY ve DİKEY")
            Text("YATAY ve DİKEY").scaleEffect(x: 2, y: 1)
            Text("YATAY ve DİKEY").scaleEffect(x: 1, y: 2)
            
            Text("Yatayda görüntüyü sıkıştır")
            Image("manzara").scaleEffect(x: 0.4, y: 1)
            
            Text("Dikeyde görüntüyü sıkıştır")
            Image("manzara").scaleEffect(x: 1, y: 0.4)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
