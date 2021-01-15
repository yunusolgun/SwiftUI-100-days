//
//  Ornek2.swift
//  Day78-DragGesture
//
//  Created by yunus olgun on 15.01.2021.
//

import SwiftUI

struct Ornek2: View {
    @State private var sliderKonumX : CGFloat = 0.0
    @GestureState private var sliderOffset = CGSize.zero
    
    var body: some View {
        VStack(spacing:20) {
            Text("Drag Gesture Örnek-2").font(.largeTitle)
            Text ("X ekseninde sınırlama").foregroundColor(.gray)
            Text("Slide Offset: \(Int(sliderOffset.width)) , \(Int(sliderOffset.height))")
            Text("Şimdiki Slider Konumu: \(Int(sliderKonumX))")
            
            GeometryReader { gr in
                HStack {
                    Spacer()
                    Image(systemName: "line.horizontal.3").rotationEffect(.degrees(90))
                }.foregroundColor(.white)
                .frame(width: 100)
                .padding()
                .background(RoundedRectangle(cornerRadius: 10).fill(Color.blue))
                .offset(x: self.sliderKonumX + self.sliderOffset.width)
                .gesture(DragGesture()
                            .updating(self.$sliderOffset, body: { (deger, slideOffset, yapilannIslem) in
                    slideOffset = deger.translation
                            }).onEnded({ deger in
                                if deger.translation.width < -gr.size.width * 0.6 {
                                    self.sliderKonumX = 50 - gr.size.width
                                } else {
                                    self.sliderKonumX = 0
                                }
                            })
                )
            }
            
            
        }.font(.title)
    }
}

struct Ornek2_Previews: PreviewProvider {
    static var previews: some View {
        Ornek2()
    }
}
