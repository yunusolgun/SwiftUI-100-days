//
//  Ornek2_Timing_Curve.swift
//  Day93-CustomTimingCurves
//
//  Created by yunus olgun on 30.01.2021.
//

import SwiftUI

struct Ornek2_Timing_Curve: View {
    @State private var show = false
    
    var body: some View {
        ZStack {
            
            Color.green.edgesIgnoringSafeArea(.all)
            
            VStack(spacing:20) {
                
                Text("Custom timing curve").font(.largeTitle)
                Text("Bisiklet kirala").foregroundColor(.gray)
                Spacer()
                Button("Gönder") {
                    withAnimation (.timingCurve(0, 0, 0, 1.5, duration:0.6)){
                        self.show = true
                    }
                }
                
            }.font(.title).foregroundColor(.white)
            
            if show {
                VStack {
                    Text("Bir bisiklet ister misin?")
                    Image("cartman")
                    
                    HStack {
                        Button("Evet, şimdi gönder") {
                            withAnimation(.timingCurve(0, -0.3, 1, 0, duration:0.6)) {
                                self.show = false
                            }
                        }.padding()
                        .foregroundColor(.white)
                        .background(Capsule().fill(Color.pink))
                        
                        Button("İptal et") {
                            self.show = false
                        }.foregroundColor(.pink)
                        
                    }
                    
                }.padding()
                .background(RoundedRectangle(cornerRadius: 20).fill(Color.yellow).shadow(radius: 8))
                .transition(AnyTransition.slide)
                .zIndex(1)
            
            }
            
        }
    }
}

struct Ornek2_Timing_Curve_Previews: PreviewProvider {
    static var previews: some View {
        Ornek2_Timing_Curve()
    }
}
