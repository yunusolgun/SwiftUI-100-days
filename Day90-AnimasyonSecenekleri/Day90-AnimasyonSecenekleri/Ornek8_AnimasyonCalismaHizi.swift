//
//  Ornek8_AnimasyonCalismaHizi.swift
//  Day90-AnimasyonSecenekleri
//
//  Created by yunus olgun on 25.01.2021.
//

import SwiftUI

struct Ornek8_AnimasyonCalismaHizi: View {
    @State private var change = false
    let duration = 1.0
    
    var body: some View {
        VStack(spacing:20) {
            Text("Animation Speed").font(.largeTitle)
            Text("Animasyonun hizin ayarlanması").foregroundColor(.gray)
            
            Button("Change") { self.change.toggle() }
            
            Text("Normal Hızı")
            Circle().fill(Color.orange)
                .frame(height:70)
                .offset(x: change ? 170 : -170)
                .animation(Animation.easeInOut(duration: duration))
            
            Text("İki katı Hızı")
            Circle().fill(Color.orange)
                .frame(height:70)
                .offset(x: change ? 170 : -170)
                .animation(Animation.easeInOut(duration: duration).speed(2))
            
            Text("Hızın yarıya indirilmesi")
            Circle().fill(Color.orange)
                .frame(height:70)
                .offset(x: change ? 170 : -170)
                .animation(Animation.easeInOut(duration: duration).speed(0.5))
            
            
        }
    }
}

struct Ornek8_AnimasyonCalismaHizi_Previews: PreviewProvider {
    static var previews: some View {
        Ornek8_AnimasyonCalismaHizi()
    }
}
