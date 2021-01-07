//
//  Ornek1.swift
//  Day60-LuminancenttoAlpha
//
//  Created by yunus olgun on 7.01.2021.
//

import SwiftUI

struct Ornek1: View {
    var body: some View {
        VStack(spacing:20) {
            Text("LuminancetoAlpha Örnek-1").font(.title)
            Text("Görüntünün karanlık-koyu alanlarını karanlık hala getirin. Ne kadar koyu olursa o kadar transparanlık oluşur.").frame(maxWidth:.infinity).padding().background(Color.blue).foregroundColor(.white)
            
            HStack {
                Spacer()
                Text("Orjinal Görüntü")
                Spacer()
                Text("Dönüştürülmüş Görüntü")
                Spacer()
            }
            
            
            HStack {
                Image("manzara").resizable().scaledToFit().frame(width:200)
                Image("manzara").resizable().scaledToFit().frame(width:200).luminanceToAlpha()
            }
            
            
            HStack {
                Image("swiftui").resizable().scaledToFit().frame(width:200)
                Image("swiftui").resizable().scaledToFit().frame(width:200).luminanceToAlpha()
            }
            
            HStack {
                Image("swiftui").resizable().scaledToFit().frame(width:200)
                ZStack {
                    Color.yellow
                    Image("swiftui").resizable().scaledToFit().frame(width:200).luminanceToAlpha()
                }
            }
            
        }
    }
}

struct Ornek1_Previews: PreviewProvider {
    static var previews: some View {
        Ornek1()
    }
}
