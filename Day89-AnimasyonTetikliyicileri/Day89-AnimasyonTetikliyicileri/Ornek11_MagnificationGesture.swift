//
//  Ornek11_MagnificationGesture.swift
//  Day89-AnimasyonTetikliyicileri
//
//  Created by yunus olgun on 24.01.2021.
//

import SwiftUI

struct Ornek11_MagnificationGesture: View {
    @GestureState private var scale : CGFloat = 0.0
    @State private var endScale : CGFloat = 1.0
    
    var body: some View {
        VStack(spacing:20) {
            Text("Trigger").font(.largeTitle)
            Text("Magnification Gesture").foregroundColor(.gray)
            
            Text("Zoom In")
            
            Spacer()
            
            Image("manzara")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200)
                .scaleEffect(scale + endScale)
                .gesture(MagnificationGesture().updating($scale, body: { (value, scale, transaction) in
                    
                    scale = value.magnitude
                    
                }).onEnded({ value in
                    self.endScale = value.magnitude + self.endScale
                }))
                .animation(.easeIn)
            
            Spacer()
            
            
        }.font(.title)
    }
}

struct Ornek11_MagnificationGesture_Previews: PreviewProvider {
    static var previews: some View {
        Ornek11_MagnificationGesture()
    }
}
