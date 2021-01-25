//
//  Ornek9_AnimasyonIptal.swift
//  Day90-AnimasyonSecenekleri
//
//  Created by yunus olgun on 25.01.2021.
//

import SwiftUI

struct Ornek9_AnimasyonIptal: View {
    @State private var change = false
    @State private var animateOnChange = false
    
    var body: some View {
        VStack(spacing:20) {
            Text("Animasyon İptal").font(.largeTitle)
            Text("Giriş").foregroundColor(.gray)
            
            Button("Change") {
                self.change.toggle()
                
                if self.change {
                    self.animateOnChange.toggle()
                }

            }
            
            Circle()
                .fill(Color.blue)
                .frame(width: 100, height: 100)
                .offset(x: change ? 150 : -150)
                .animation(Animation.easeIn(duration: 2),value: animateOnChange)
            
            Text(animateOnChange ? "True" : "False")
            
        }.font(.title)
    }
}

struct Ornek9_AnimasyonIptal_Previews: PreviewProvider {
    static var previews: some View {
        Ornek9_AnimasyonIptal()
    }
}
