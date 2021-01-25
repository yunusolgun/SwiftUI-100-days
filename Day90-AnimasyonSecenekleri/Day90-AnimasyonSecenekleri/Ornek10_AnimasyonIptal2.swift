//
//  Ornek10_AnimasyonIptal2.swift
//  Day90-AnimasyonSecenekleri
//
//  Created by yunus olgun on 25.01.2021.
//

import SwiftUI

struct Ornek10_AnimasyonIptal2: View {
    @State private var showCard = false
    @State private var animateOnChange = false
    
    var body: some View {
        VStack(spacing:20) {
            Text("Animasyon Iptal-2").font(.title)
            
            Button(action: {
                self.showCard.toggle()
                self.animateOnChange.toggle()
            }, label: {
                Image(systemName: "creditcard").font(.largeTitle)
            })
            
            
            VStack {
                HStack {
                    Spacer()
                    Text("Kartını al")
                    Spacer()
                    
                    Button(action: {
                        self.showCard.toggle()
                    }, label: {
                        Text("X").font(.body).padding(8)
                    }).background(Circle().stroke(Color.white))
                    
                    
                }.foregroundColor(.white)
                Image("manzara")
                
            }.padding()
            .background(RoundedRectangle(cornerRadius: 20).fill(Color.blue))
            .padding(.horizontal)
            .offset(x: showCard ? 0 : -400)
            .animation(.default, value: animateOnChange)
            
            
        }.font(.title)
    }
}

struct Ornek10_AnimasyonIptal2_Previews: PreviewProvider {
    static var previews: some View {
        Ornek10_AnimasyonIptal2()
    }
}
