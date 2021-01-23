//
//  Ornek4_AnimasyonVeParametreler1.swift
//  Day88-BasitAnimasyonlar
//
//  Created by yunus olgun on 23.01.2021.
//

import SwiftUI

struct Ornek4_AnimasyonVeParametreler1: View {
    @State private var locationChange = false
    
    var body: some View {
        VStack(spacing:20) {
            Text("Animasyon ve Parametreler").font(.largeTitle)
            Text("Animasyon Offset Position").foregroundColor(.gray)
            
            Text("Offset - X ve Y parametreleriyle")
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.blue)
                .frame(width: 100, height: 100)
                .offset(x: locationChange ? 140:-140, y: 0)
                .animation(.default)
            
            Text("Offset-CGSize parametreleriyle")
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.blue)
                .frame(width: 100, height: 100)
                .offset(locationChange ? CGSize(width: 140, height: 0): CGSize(width: -140, height: 0))
                .animation(.default)
            
            Text("Position - CGPoint")
            GeometryReader { gr in
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(.blue)
                    .frame(width: 100, height: 100)
                    .position(self.locationChange ? CGPoint(x: 100, y: 100) : CGPoint(x: 300, y: 300))
                    .animation(.default)
            }
            
            
            Button("Change") {
                self.locationChange.toggle()
            }
    
            
        }.font(.title)
    }
}

struct Ornek4_AnimasyonVeParametreler1_Previews: PreviewProvider {
    static var previews: some View {
        Ornek4_AnimasyonVeParametreler1()
    }
}
