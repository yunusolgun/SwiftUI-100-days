//
//  Image_Ornek2.swift
//  Day19-Image
//
//  Created by yunus olgun on 1.01.2021.
//

import SwiftUI

struct Image_Ornek2: View {
    var body: some View {
        VStack(spacing:20) {
            Text("Image Örnek - 2").font(.largeTitle)
            Text("Resizing").font(.title).foregroundColor(.gray)
            
            Text("Orjinal görüntü")
            Image("manzara")
            
            Spacer()
            
            Text("Ölçeklendirme olmadan")
            Image("manzara").resizable().frame(width:150,height:150)
            
            Text("Ölçeklendirmeli")
            Image("manzara").resizable().scaledToFit().frame(width:150,height:150).background(Color.white)
            
            Image("manzara").resizable().scaledToFill().frame(width:150,height:150)
            
        }.frame(maxWidth:.infinity, maxHeight: .infinity)
        .background(Color.black.edgesIgnoringSafeArea(.vertical))
        .foregroundColor(.white)
    }
}

struct Image_Ornek2_Previews: PreviewProvider {
    static var previews: some View {
        Image_Ornek2()
    }
}
