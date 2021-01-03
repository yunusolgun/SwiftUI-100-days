//
//  AspectRatio_Ornek2.swift
//  Day33-AspectRatio
//
//  Created by yunus olgun on 3.01.2021.
//

import SwiftUI

struct AspectRatio_Ornek2: View {
    var body: some View {
        VStack(spacing:20){
            Text("Aspect Ratio Örnek - 2").font(.largeTitle)
            Text("Farklı cihazlar için boyutlandırma").font(.title).foregroundColor(.gray)
            
            GeometryReader { gr in
                RoundedRectangle(cornerRadius: 15).frame(width: gr.size.width / 2).aspectRatio(1.5, contentMode: .fit).foregroundColor(.purple).overlay(
                    Text("3:2 Aspect Ratio").foregroundColor(.white)
                )
            }
        }
    }
}

struct AspectRatio_Ornek2_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            AspectRatio_Ornek2().previewDevice(PreviewDevice(rawValue: "iPad Pro (12.9-inch) (4th generation)"))
            AspectRatio_Ornek2().previewDevice(PreviewDevice(rawValue: "iPhone 11 Pro Max"))
        }
    }
}
