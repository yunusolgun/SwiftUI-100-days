//
//  Ornek3_Slider.swift
//  Day89-AnimasyonTetikliyicileri
//
//  Created by yunus olgun on 24.01.2021.
//

import SwiftUI

struct Ornek3_Slider: View {
    @State private var blueWidth : CGFloat = 50.0
    
    var body: some View {
        GeometryReader { gr in
            VStack(spacing:20) {
                Text("Triggers").font(.largeTitle)
                Text("Slider").font(.title).foregroundColor(.gray)
                
                HStack(spacing:0) {
                    Color.blue.frame(width: blueWidth)
                    Color.green
                }.animation(.default)
                
                Slider(value: $blueWidth, in: 0...gr.size.width,step:1).padding()
                
            }
        }
    }
}

struct Ornek3_Slider_Previews: PreviewProvider {
    static var previews: some View {
        Ornek3_Slider()
    }
}
