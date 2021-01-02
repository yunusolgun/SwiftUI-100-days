//
//  AngularGradient_Ornek2.swift
//  Day23-AngularGradient
//
//  Created by yunus olgun on 2.01.2021.
//

import SwiftUI

struct AngularGradient_Ornek2: View {
    let angularGradient = AngularGradient(gradient: Gradient(colors: [.pink, .purple, .pink]), center: .center, angle: .degrees(0))
    
    
    var body: some View {
        VStack(spacing:20) {
            Text("Angular Gradient Örnek-2").font(.largeTitle)
            
            HStack {
                Circle().fill(angularGradient)
                Ellipse().fill(angularGradient)
                Capsule().fill(angularGradient)
            }.padding(.horizontal).frame(height:200)
            
            HStack {
                Circle().stroke(angularGradient, lineWidth: 15)
                Ellipse().strokeBorder(angularGradient,lineWidth: 15)
                Capsule().trim(from: 0.25, to: 1).stroke(angularGradient,style: StrokeStyle(lineWidth:15, lineCap: .round))
            }.padding(.horizontal).frame(height:200).padding(.horizontal,5)
            
            Button(action: {}) {
                Text("Gradient arka planda").foregroundColor(.white).padding()
            }.padding().background(Capsule().fill(angularGradient))
            
            
            Button(action: {}) {
                Text("Gradient kenarlık").foregroundColor(.blue).bold().padding()
                    .background(Capsule().stroke(angularGradient,lineWidth: 5))
            }.padding(.horizontal)
            
            
        }
    }
}

struct AngularGradient_Ornek2_Previews: PreviewProvider {
    static var previews: some View {
        AngularGradient_Ornek2()
    }
}
