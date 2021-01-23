//
//  Ornek2_AnimasyonGiris.swift
//  Day88-BasitAnimasyonlar
//
//  Created by yunus olgun on 23.01.2021.
//

import SwiftUI

struct Ornek2_AnimasyonGiris: View {
    @State private var colorChange = false
    
    var body: some View {
        VStack(spacing:20) {
            Text("Animasyon Örnek-2").font(.largeTitle)
            Text("With Animation")
            RoundedRectangle(cornerRadius: 20).foregroundColor(colorChange ? .orange : .blue)
                .padding()
                .animation(.easeInOut)
            
            Text("No animation")
            RoundedRectangle(cornerRadius: 20).foregroundColor(colorChange ? .orange : .blue)
                .padding()
            
            Spacer()
            
            Button("Color Change") {
                self.colorChange.toggle()
            }
            
        }.font(.title)
    }
}

struct Ornek2_AnimasyonGiris_Previews: PreviewProvider {
    static var previews: some View {
        Ornek2_AnimasyonGiris()
    }
}
