//
//  Ornek1_AnimasyonGiris.swift
//  Day88-BasitAnimasyonlar
//
//  Created by yunus olgun on 23.01.2021.
//

import SwiftUI

struct Ornek1_AnimasyonGiris: View {
    @State private var change = false
    
    var body: some View {
        VStack(spacing:20) {
            Text("Animasyon Örnek-1").font(.largeTitle)
            
            Circle().foregroundColor(.orange)
                .frame(width: 100, height: 100)
                .offset(x: 0, y: change ? 350 : 0)
                .animation(.easeInOut)
            
            Spacer()
            Button("Change") {
                self.change.toggle()
            }.padding(.bottom)
            
            
            
        }.font(.title)
    }
}

struct Ornek1_AnimasyonGiris_Previews: PreviewProvider {
    static var previews: some View {
        Ornek1_AnimasyonGiris()
    }
}
