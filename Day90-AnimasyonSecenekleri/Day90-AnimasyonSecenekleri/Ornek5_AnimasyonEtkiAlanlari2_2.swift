//
//  Ornek5_AnimasyonEtkiAlanlari2_2.swift
//  Day90-AnimasyonSecenekleri
//
//  Created by yunus olgun on 25.01.2021.
//

import SwiftUI

struct Ornek5_AnimasyonEtkiAlanlari2_2: View {
    @State private var flipHorizontally = false
    @State private var flipVertically = false
    
    var body: some View {
        VStack(spacing:20) {
            Text("Animasyon Etki").font(.largeTitle)
            Text("Giriş").foregroundColor(.gray)
            Text("withAnimation Closure yapısı")
            
            HStack(spacing:50) {
                Button(action: {
                    withAnimation(Animation.easeOut(duration: 1)) {
                        self.flipHorizontally.toggle()
                    }
                }, label: {
                    Image(systemName: "flip.horizontal.fill").font(.system(size: 50)).padding(.all, 15)
                })
                
                
                Button(action: {
                    withAnimation(Animation.easeOut(duration: 1)) {
                        self.flipVertically.toggle()
                    }
                }, label: {
                    Image(systemName: "flip.horizontal.fill").font(.system(size: 50)).rotationEffect(.degrees(90)).padding(.all, 15)
                })
            }
            

            
            Image("manzara")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(30).padding(.all, 15)
                .scaleEffect(x: flipHorizontally ? -1 : 1, y: flipVertically ? -1 : 1)
            
            
            
            
            
        }.font(.title)
    }
}

struct Ornek5_AnimasyonEtkiAlanlari2_2_Previews: PreviewProvider {
    static var previews: some View {
        Ornek5_AnimasyonEtkiAlanlari2_2()
    }
}
