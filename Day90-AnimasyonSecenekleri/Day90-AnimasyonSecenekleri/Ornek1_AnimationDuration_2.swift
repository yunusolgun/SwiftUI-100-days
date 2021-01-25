//
//  Ornek1_AnimationDuration_2.swift
//  Day90-AnimasyonSecenekleri
//
//  Created by yunus olgun on 25.01.2021.
//

import SwiftUI

struct Ornek1_AnimationDuration_2: View {
    @State private var change = false
    
    var body: some View {
        ZStack {
            Image(systemName: "cloud.sun.fill")
                .font(.system(size: 200))
                .foregroundColor(.purple)
                .opacity(0.3)
                .offset(x: change ? 250 : -250, y: 20)
                .animation(.linear(duration: 15))
            
            Image(systemName: "cloud.fill")
                .font(.system(size: 200))
                .foregroundColor(.purple)
                .opacity(0.3)
                .offset(x: change ? -250 : 250, y: 200)
                .animation(.linear(duration: 10))
            
            
            VStack(spacing:20) {
                Text("Animation Options").font(.largeTitle)
                Text("Long Duration").foregroundColor(.gray)
                Spacer()
                Button("Değiştir") {
                    self.change.toggle()
                }
            }.font(.title)
            
            
        }
    }
}

struct Ornek1_AnimationDuration_2_Previews: PreviewProvider {
    static var previews: some View {
        Ornek1_AnimationDuration_2()
    }
}
