//
//  Ornek8_AnimasyonVeParemetreler2.swift
//  Day88-BasitAnimasyonlar
//
//  Created by yunus olgun on 23.01.2021.
//

import SwiftUI

struct Ornek8_AnimasyonVeParemetreler2: View {
    @State private var change = false
    
    var body: some View {
        VStack(spacing:20) {
            Text("Animasyon CornerRadius").font(.largeTitle)
            
            Button("Change") {
                self.change.toggle()
            }
            
            RoundedRectangle(cornerRadius: change ? 0 : 70)
                .foregroundColor(.blue)
                .padding()
                .animation(.easeInOut)
            
            
            Text("CornerRadius Metoduyla")
                .padding(25)
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(change ? 0 : 100)
                .animation(.easeInOut)
            
            
        }.font(.title)
    }
}

struct Ornek8_AnimasyonVeParemetreler2_Previews: PreviewProvider {
    static var previews: some View {
        Ornek8_AnimasyonVeParemetreler2()
    }
}
