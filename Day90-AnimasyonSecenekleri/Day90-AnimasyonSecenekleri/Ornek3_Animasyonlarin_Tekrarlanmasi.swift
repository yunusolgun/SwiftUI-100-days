//
//  Ornek3_Animasyonlarin_Tekrarlanmasi.swift
//  Day90-AnimasyonSecenekleri
//
//  Created by yunus olgun on 25.01.2021.
//

import SwiftUI

struct Ornek3_Animasyonlarin_Tekrarlanmasi: View {
    @State private var start = false
    
    var body: some View {
        VStack(spacing:20) {
            Text("Repeating Animations").font(.largeTitle)
            Text("Repat Count - Tekrar Sayısı").foregroundColor(.gray)
            Spacer()
            
            Group {
                Text("Animasyon 3 Tekrar")
                Button("Start",action: { self.start.toggle() })
                    .font(.largeTitle)
                    .padding(.all, 12)
                    .foregroundColor(.white)
                    .background(RoundedRectangle(cornerRadius: 20).fill(Color.green))
                    .overlay(
                        RoundedRectangle(cornerRadius: 20).stroke(Color.green,lineWidth: 5)
                            .scaleEffect(start ? 2 : 1)
                            .opacity(start ? 0 : 1)
                            .animation(Animation.easeOut(duration: 0.6).repeatCount(3))
                    )
                
                Spacer()
                
                Text("Ters Animasyon İptal")
                Button("Start",action: { self.start.toggle() })
                    .font(.largeTitle)
                    .padding(.all, 12)
                    .foregroundColor(.white)
                    .background(RoundedRectangle(cornerRadius: 20).fill(Color.green))
                    .overlay(
                        RoundedRectangle(cornerRadius: 20).stroke(Color.green,lineWidth: 5)
                            .scaleEffect(start ? 2 : 1)
                            .opacity(start ? 0 : 1)
                            .animation(Animation.easeOut(duration: 0.6).repeatCount(3,autoreverses: false))
                    )
                
                
                Spacer()
                
                
                Text("Animasyoun sürekli çalışması")
                Button("Start",action: { self.start.toggle() })
                    .font(.largeTitle)
                    .padding(.all, 12)
                    .foregroundColor(.white)
                    .background(RoundedRectangle(cornerRadius: 20).fill(Color.green))
                    .overlay(
                        RoundedRectangle(cornerRadius: 20).stroke(Color.green,lineWidth: 5)
                            .scaleEffect(start ? 2 : 1)
                            .opacity(start ? 0 : 1)
                            .animation(Animation.easeOut(duration: 0.6).repeatForever(autoreverses: false))
                    )
                
                
            }
            
        }.font(.title)
    }
}

struct Ornek3_Animasyonlarin_Tekrarlanmasi_Previews: PreviewProvider {
    static var previews: some View {
        Ornek3_Animasyonlarin_Tekrarlanmasi()
    }
}
