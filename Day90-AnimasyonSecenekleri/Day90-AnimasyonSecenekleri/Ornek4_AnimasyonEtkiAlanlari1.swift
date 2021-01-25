//
//  Ornek4_AnimasyonEtkiAlanlari1.swift
//  Day90-AnimasyonSecenekleri
//
//  Created by yunus olgun on 25.01.2021.
//

import SwiftUI

struct Ornek4_AnimasyonEtkiAlanlari1: View {
    @State private var change = false
    
    var body: some View {
        VStack(spacing:20){
            Text("Scope").font(.largeTitle)
            Text("Bir view üzerinde sıralı animasyon").foregroundColor(.gray)
            
            Button("Değiştir") {
                self.change.toggle()
            }
            
            Spacer()
            
            Image(systemName: "heart.fill")
                .foregroundColor(.yellow)
                .font(.system(size: 150))
                
                .scaleEffect(change ? 2 : 1)
                .animation(Animation.easeInOut(duration: 1))
            
                .scaleEffect(change ? 0.75 : 1)
                .animation(Animation.easeIn.delay(1))
            
            
            
            
            Spacer()
            
            
        }.font(.title)
    }
}

struct Ornek4_AnimasyonEtkiAlanlari1_Previews: PreviewProvider {
    static var previews: some View {
        Ornek4_AnimasyonEtkiAlanlari1()
    }
}
