//
//  Ornek1_Egri_Olusturma.swift
//  Day93-CustomTimingCurves
//
//  Created by yunus olgun on 30.01.2021.
//

import SwiftUI

struct Ornek1_Egri_Olusturma: View {
    @State private var change = false
    
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            
            VStack(spacing:20) {
                Text("Custom Timing Curve").font(.largeTitle)
                Text("Giriş").foregroundColor(.gray)
                
                Text("Hızlı, Yavaş, Hızlı")
                    .padding()
                    .background(Color.orange)
                
                Spacer()
                
                GeometryReader { gr in
                    
                    VStack {
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(.pink)
                            .frame(width: 100, height: 100)
                            .overlay(Text("C-1").font(.largeTitle).bold())
                            .offset(x: change ? gr.size.width - 110 : 10)
                            .animation(Animation.timingCurve(0.1, 0.7, 0.9, 0.3,duration: 1))
                        
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(.pink)
                            .frame(width: 100, height: 100)
                            .overlay(Text("Linear").font(.largeTitle).bold())
                            .offset(x: change ? gr.size.width - 110 : 10)
                            .animation(Animation.linear(duration: 1))
                        
                        
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(.pink)
                            .frame(width: 100, height: 100)
                            .overlay(Text("C-2").font(.largeTitle).bold())
                            .offset(x: change ? gr.size.width - 110 : 10)
                            .animation(Animation.timingCurve(0, 0.85, 0.15, 1,duration: 1))
                        
                    }
                    
                    
                    
                }
                
                
                Text("Çok Hızlı, Yavaş, Daha Yavaş")
                    .padding()
                    .background(Color.orange)
                
                Spacer()
                
                Button("Başlat") { self.change.toggle() }
                
                
            }
            
        }.font(.title).foregroundColor(.white)
    }
}

struct Ornek1_Egri_Olusturma_Previews: PreviewProvider {
    static var previews: some View {
        Ornek1_Egri_Olusturma()
    }
}
