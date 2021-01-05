//
//  Ornek2.swift
//  Day48-Blur
//
//  Created by yunus olgun on 5.01.2021.
//

import SwiftUI

struct Ornek2: View {
    @State private var mesajGosterilsin = false
    
    var body: some View {
        
        ZStack {
            
            VStack(spacing:20) {
                Text("Blur Örnek - 2").font(.largeTitle)
                Text("Mesaj gösterme").font(.title).foregroundColor(.gray)
                
                Button(action: {
                    self.mesajGosterilsin = true
                }) {
                    Text("Mesaj Goster")
                }
                
                Spacer()
                
            }.blur(radius: mesajGosterilsin ? 3 : 0)
            
            if $mesajGosterilsin.wrappedValue {
                ZStack {
                    Color.black.opacity(0.4).edgesIgnoringSafeArea(.vertical)
                    
                    VStack(spacing:20) {
                        Text("Mesaj alanı bulanıklaştırma").padding().font(.title).frame(maxWidth:.infinity).background(Color.orange).foregroundColor(.white)
                        
                        Spacer()
                        
                        Button(action: {
                            self.mesajGosterilsin = false
                        }) {
                            Text("Kapat")
                        }.padding()
                        
                    }.frame(width: 300, height: 300).background(Color.white).cornerRadius(20).shadow(radius: 20)
                    
                }
            }
            
        }
        
        
    }
}

struct Ornek2_Previews: PreviewProvider {
    static var previews: some View {
        Ornek2()
    }
}
