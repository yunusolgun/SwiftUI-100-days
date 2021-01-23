//
//  Ornek6_AnimasyonVeParametreler2.swift
//  Day88-BasitAnimasyonlar
//
//  Created by yunus olgun on 23.01.2021.
//

import SwiftUI

struct Ornek6_AnimasyonVeParametreler2: View {
    @State private var rotate = false
    
    var body: some View {
        VStack(spacing:20) {
            Text("Animasyon Rotate Anchor").font(.largeTitle)
            Button("Rotate") {
                self.rotate.toggle()
            }
            Spacer()
            
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.blue)
                .shadow(radius: 8)
                .frame(width: 320, height: 320)
                .overlay(Text("Rotate from top leading").foregroundColor(.white))
                .rotationEffect(Angle.degrees(rotate ? 220 : 0), anchor: .topLeading)
                .animation(.easeInOut)
            
            
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.blue)
                .shadow(radius: 8)
                .frame(width: 320, height: 320)
                .overlay(Text("Rotate from top bottom trailing").foregroundColor(.white))
                .rotationEffect(Angle.degrees(rotate ? 220 : 0), anchor: .bottomTrailing)
                .animation(.easeInOut)
            
            Spacer()
            
        }.font(.title)
    }
}

struct Ornek6_AnimasyonVeParametreler2_Previews: PreviewProvider {
    static var previews: some View {
        Ornek6_AnimasyonVeParametreler2()
    }
}
