//
//  Ornek12_RotationGesture.swift
//  Day89-AnimasyonTetikliyicileri
//
//  Created by yunus olgun on 24.01.2021.
//

import SwiftUI

struct Ornek12_RotationGesture: View {
    @State private var degress = 0.0
    
    
    var body: some View {
        VStack(spacing:20) {
            Text("Triggers").font(.largeTitle)
            Text("Rotation Gesture").foregroundColor(.gray)
            Spacer()
            
            Group {
                Image(systemName: "gear")
                    .font(.system(size: 300))
                    .rotationEffect(.degrees(degress))
                    .gesture(RotationGesture().onChanged({ angle in
                        self.degress = angle.degrees
                    }))
                    .animation(.default)
                
                
                Image(systemName: "gear")
                    .font(.system(size: 140))
                    .rotationEffect(-Angle.degrees(degress))
                    .offset(x: 130, y: -60)
                    .animation(.default)
                
                
                Image(systemName: "gear")
                    .font(.system(size: 80))
                    .rotationEffect(Angle.degrees(degress))
                    .offset(x: 60, y: -100)
                    .animation(.default)
                
                
                
            }.foregroundColor(.green)
            
            
        }.font(.title)
    }
}

struct Ornek12_RotationGesture_Previews: PreviewProvider {
    static var previews: some View {
        Ornek12_RotationGesture()
    }
}
