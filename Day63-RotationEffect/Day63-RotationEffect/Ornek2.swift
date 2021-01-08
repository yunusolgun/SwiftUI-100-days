//
//  Ornek2.swift
//  Day63-RotationEffect
//
//  Created by yunus olgun on 8.01.2021.
//

import SwiftUI

struct Ornek2: View {
    @State private var donusMiktari : Double = 0
    let timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        VStack(spacing:20) {
            Text("Rotation Effect Örnek - 2").font(.largeTitle)
            Text("Rotation Effect ve Konum").font(.title).foregroundColor(.gray)
            Spacer()
            
            VStack(spacing:120) {
                Text(".center").rotationEffect(.degrees(donusMiktari), anchor: .center).border(Color.green,width: 4)
                Text(".topLeading").rotationEffect(.degrees(donusMiktari), anchor: .topLeading).border(Color.green,width: 4)
                
                Text(".bottomTrailing").rotationEffect(.degrees(donusMiktari), anchor: .bottomTrailing).border(Color.green,width: 4)
                
            }.font(.largeTitle)
            
            
            Button(action: {
                self.timer.upstream.connect().cancel()
            }) {
                
                Text("Durdur")
            }
            
            Spacer()
        }.onReceive(timer, perform: { _ in
            self.donusMiktari = self.donusMiktari >= 360 ? 0 : (self.donusMiktari + 30)
        })
    }
}

struct Ornek2_Previews: PreviewProvider {
    static var previews: some View {
        Ornek2()
    }
}
