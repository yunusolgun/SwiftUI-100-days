//
//  Ornek1.swift
//  Day68-TransformEffect
//
//  Created by yunus olgun on 11.01.2021.
//

import SwiftUI

struct Ornek1: View {
    @State private var donusumUygula = false
    var body: some View {
        ZStack{
            Color.black.edgesIgnoringSafeArea(.vertical)
            
            VStack(spacing:20) {
                Text("Transform Effect Örnek - 1").font(.largeTitle).foregroundColor(.white)
                Spacer()
                
                Image(systemName: "arrow.up.right").font(.largeTitle).padding(.leading,90).foregroundColor(.white)
                Image(systemName: "paperplane.fill").font(.largeTitle).foregroundColor(.purple).transformEffect(donusumUygula ? CGAffineTransform(translationX: 100, y: -100) : .identity)
                
                Spacer()
                
                HStack {
                    Spacer()
                    Button(action: {
                        self.donusumUygula = true
                    }, label: {
                        Text("Konumunu Değiştir")
                    })
                    
                    Button(action: {
                        self.donusumUygula = false
                    }, label: {
                        Text("Konum Sıfırla")
                    })
                    Spacer()
                    
                }
                
            }
            
        }
    }
}

struct Ornek1_Previews: PreviewProvider {
    static var previews: some View {
        Ornek1()
    }
}
