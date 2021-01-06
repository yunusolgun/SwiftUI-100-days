//
//  Ornek3.swift
//  Day49-Border
//
//  Created by yunus olgun on 6.01.2021.
//

import SwiftUI

struct Ornek3: View {
    let angularGradient = AngularGradient(gradient: Gradient(colors: [Color.pink, Color.purple]), center: .center,angle: .degrees(0))
    
    let linearGradient = LinearGradient(gradient: Gradient(colors: [Color.pink, Color.purple]), startPoint: .topLeading, endPoint: .bottomTrailing)
    
    let radialGradient = RadialGradient(gradient: Gradient(colors: [Color.pink, Color.purple]), center: .center, startRadius: 50, endRadius: 100)
    
    
    var body: some View {
        VStack(spacing:20) {
            Text("Border Örnek - 3").font(.largeTitle)
            Text("Gradient Renkler ver Border").font(.title).foregroundColor(.gray)
            
            Button(action: {}) {
                Text("Angular Gradient").padding()
            }.border(angularGradient, width: 15)
            
            Text("Kenarlıklı Metin").padding().border(linearGradient, width: 15)
            
            Image("manzara").border(radialGradient, width: 15)
            
        }
    }
}

struct Ornek3_Previews: PreviewProvider {
    static var previews: some View {
        Ornek3()
    }
}
