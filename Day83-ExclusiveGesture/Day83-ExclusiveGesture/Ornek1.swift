//
//  Ornek1.swift
//  Day83-ExclusiveGesture
//
//  Created by yunus olgun on 22.01.2021.
//

import SwiftUI

struct Ornek1: View {
    
    struct DurumlarGesture {
        var derece : Double = 0
        var ciftTab = false
    }
    
    @State private var durumlarGesture = DurumlarGesture()
    
    var body: some View {
        VStack(spacing:20) {
            Text("ExclusiveGesture Örnek-1").font(.largeTitle)
            Text("Çift tıkla veya döndür")
            Image("manzara")
                .border(durumlarGesture.ciftTab ? Color.red : Color.clear, width: 3)
                .shadow(radius: durumlarGesture.ciftTab ? 12:0 )
                .rotationEffect(.degrees(durumlarGesture.derece))
                .gesture(TapGesture(count: 2).onEnded({ _ in
                    self.durumlarGesture.ciftTab.toggle()
                }).exclusively(before: RotationGesture().onChanged({ angle in
                    self.durumlarGesture.derece = angle.degrees
                }))
                )
            
            Text("Rotation: ") + Text("\(durumlarGesture.derece)").foregroundColor(.red)
        }
    }
}

struct Ornek1_Previews: PreviewProvider {
    static var previews: some View {
        Ornek1()
    }
}
