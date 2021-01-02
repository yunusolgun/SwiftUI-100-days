//
//  AngularGradient_Ornek1.swift
//  Day23-AngularGradient
//
//  Created by yunus olgun on 2.01.2021.
//

import SwiftUI

struct AngularGradient_Ornek1: View {
    let angularGradient = AngularGradient(gradient: Gradient(colors: [.pink, .purple,.pink]), center: .center, angle: .degrees(0))
    
    let merkeziOlmayanAngularGradient = AngularGradient(gradient: Gradient(colors: [.pink, .purple,.pink]), center: .bottomLeading, angle: .degrees(0))
    
    
    var body: some View {
        VStack(spacing:20) {
            Text("Angular Gradient Örnek - 1").font(.largeTitle)
            Rectangle().fill(angularGradient)
            Rectangle().fill(merkeziOlmayanAngularGradient)
        }
    }
}

struct AngularGradient_Ornek1_Previews: PreviewProvider {
    static var previews: some View {
        AngularGradient_Ornek1()
    }
}
