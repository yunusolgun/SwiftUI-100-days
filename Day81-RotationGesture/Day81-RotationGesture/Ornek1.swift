//
//  Ornek1.swift
//  Day81-RotationGesture
//
//  Created by yunus olgun on 21.01.2021.
//

import SwiftUI

struct Ornek1: View {
    @State private var dondurmeDerecesi : Double = 0
    var body: some View {
        VStack(spacing:20) {
            Text("RotationGesture Örnek-1").font(.largeTitle)
            Text("Rotation: ") + Text("\(dondurmeDerecesi)").foregroundColor(.red).font(.title)
            Spacer()
            
            ZStack {
                Image(systemName: "lock").font(.system(size: 500)).foregroundColor(.green).offset(y:-100)
                
                Image(systemName: "timelapse").font(.system(size: 120)).rotationEffect(.degrees(dondurmeDerecesi)).padding(20).background(Circle().fill(Color.green))
                
            }.gesture(RotationGesture().onChanged({ angle in
                self.dondurmeDerecesi = angle.degrees
            }))
            
        }
    }
}

struct Ornek1_Previews: PreviewProvider {
    static var previews: some View {
        Ornek1()
    }
}
