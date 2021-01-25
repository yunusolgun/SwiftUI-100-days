//
//  Ornek7_AnimasyonEtkiAlanlari4.swift
//  Day90-AnimasyonSecenekleri
//
//  Created by yunus olgun on 25.01.2021.
//

import SwiftUI

struct Ornek7_AnimasyonEtkiAlanlari4: View {
    @State private var expandMoreInfo = false
    @State private var showInfo = false
    
    var body: some View {
        VStack(spacing:20) {
            
            Text("Animation Scope").font(.largeTitle)
            Text("Parent/Child Sıralı Animasyon").foregroundColor(.gray)
            
            GeometryReader { gr in
                VStack(spacing:15) {
                   
                    HStack {
                        Image(systemName: "info.circle").padding(.horizontal, 15)
                        Text("Giriş yapamıyorum")
                        Spacer()
                    }.padding(.top,10)
                    
                    VStack(spacing:10) {
                        Image(systemName: "slider.horizontal.3").font(.largeTitle)
                        Text("Parent animasyonu bittikten sonra görüntülenecek").font(.headline)
                        Spacer()
                    }.frame(maxWidth:.infinity)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 15).opacity(0.1))
                    .padding(.horizontal)
                    .opacity(self.showInfo ? 1 : 0)
                    
                    
                    
                }.padding(.trailing,12)
                .background(RoundedRectangle(cornerRadius: 20).fill(Color.yellow).shadow(radius: 8 ))
                .offset(x: self.expandMoreInfo ? 15: gr.frame(in: .global).width - 65,
                        y: self.expandMoreInfo ? 15: gr.frame(in: .global).height - 65)
                
                .onTapGesture {
                    withAnimation {
                        self.expandMoreInfo.toggle()
                    }
                    
                    withAnimation(Animation.default.delay(0.5)) {
                        self.showInfo.toggle()
                    }
                    
                }
            }
            
        }.edgesIgnoringSafeArea(.bottom).font(.title)
    }
}

struct Ornek7_AnimasyonEtkiAlanlari4_Previews: PreviewProvider {
    static var previews: some View {
        Ornek7_AnimasyonEtkiAlanlari4()
    }
}
