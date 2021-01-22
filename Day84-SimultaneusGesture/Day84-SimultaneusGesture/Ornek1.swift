//
//  Ornek1.swift
//  Day84-SimultaneusGesture
//
//  Created by yunus olgun on 22.01.2021.
//

import SwiftUI

struct Ornek1: View {
    
    @State private var derece = 0.0
    @State private var olcek: CGFloat = 1.0
    
    var body: some View {
        VStack(spacing:20){
            Text("SimultaneusGesture Örnek-1").font(.title)
            Text("Zoom veya Döndür")
            Image("manzara")
                .scaleEffect(olcek)
                .rotationEffect(.degrees(derece))
                .gesture(
                    MagnificationGesture().simultaneously(with: RotationGesture())
                        .onChanged({ (deger : SimultaneousGesture<MagnificationGesture, RotationGesture>.Value) in
                            
                            self.olcek = deger.first ?? 1.0
                            self.derece = deger.second?.degrees ?? 0
                            
                        })
                )
            
            Text("Rotation: ") + Text("\(derece)").foregroundColor(.red)
            Text("Ölçek: ") + Text("\(olcek)").foregroundColor(.red)
        }
    }
}

struct Ornek1_Previews: PreviewProvider {
    static var previews: some View {
        Ornek1()
    }
}
