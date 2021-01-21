//
//  Ornek2.swift
//  Day80-MagnificationGesture
//
//  Created by yunus olgun on 21.01.2021.
//

import SwiftUI

struct Ornek2: View {
    @GestureState var magnifyDegeri = CGFloat(1.0)
    
    var magnification: some Gesture {
        MagnificationGesture().updating($magnifyDegeri) { sonDurum, gestureDurum, transaction in
            gestureDurum = sonDurum
        }
    }
    
    var body: some View {
        VStack(spacing:20) {
            Text("MagnificationGesture Örnek-2").font(.title)
            Text("Zoom yapın").font(.title)
            Circle().fill(Color.orange)
                .frame(width:100*magnifyDegeri, height: 100*magnifyDegeri, alignment: .center)
                .gesture(magnification)
        }
    }
}

struct Ornek2_Previews: PreviewProvider {
    static var previews: some View {
        Ornek2()
    }
}
