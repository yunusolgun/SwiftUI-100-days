//
//  Ornek7_AnimasyonVeParametreler2.swift
//  Day88-BasitAnimasyonlar
//
//  Created by yunus olgun on 23.01.2021.
//

import SwiftUI

struct Ornek7_AnimasyonVeParametreler2: View {
    @State private var scale = false
    var body: some View {
        VStack(spacing:20) {
            Text("Animasyon Scale").font(.largeTitle)
            
            Button("Scale") {
                self.scale.toggle()
            }
            
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.blue)
                .padding()
                .scaleEffect(scale ? 0.1 : 1)
                .animation(.easeInOut)
            
            
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.orange)
                .overlay(Text("Scale from top").foregroundColor(.white))
                .padding()
                .scaleEffect(scale ? 1 : 0.25, anchor: .top)
                .animation(.easeInOut)
            
            
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.orange)
                .overlay(Text("Scale from right").foregroundColor(.white))
                .padding()
                .scaleEffect(scale ? 0.25 : 1, anchor: .trailing)
                .animation(.easeInOut)
            
            
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.orange)
                .overlay(Text("Scale from  bottomleft").foregroundColor(.white))
                .padding()
                .scaleEffect(scale ? 1 : 0.25, anchor: .bottomLeading)
                .animation(.easeInOut)
            
            
        }.font(.title)
    }
}

struct Ornek7_AnimasyonVeParametreler2_Previews: PreviewProvider {
    static var previews: some View {
        Ornek7_AnimasyonVeParametreler2()
    }
}
