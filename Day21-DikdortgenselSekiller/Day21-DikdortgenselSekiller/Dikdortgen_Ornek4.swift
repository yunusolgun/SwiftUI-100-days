//
//  Dikdortgen_Ornek4.swift
//  Day21-DikdortgenselSekiller
//
//  Created by yunus olgun on 1.01.2021.
//


import SwiftUI

struct Dikdortgen_Ornek4: View {
    var body: some View {
        VStack(spacing:20) {
            Text("Rectangular Örnek - 4").font(.largeTitle)
            Text("Size metodu").font(.title)
            
            Text("Genişlik 100 ve yükseklik 100")
            Rectangle()
                .size(CGSize(width: 100, height: 100))
                .foregroundColor(.pink)
                .background(Color.gray)
            
            Text("Genişkik 200, yükseklik 180")
            RoundedRectangle(cornerRadius: 20)
                .size(CGSize(width: 200, height: 180))
                .foregroundColor(.yellow)
                .background(Color.blue)
                .frame(width:250, height:250)
            
        }
    }
}

struct Dikdortgen_Ornek4_Previews: PreviewProvider {
    static var previews: some View {
        Dikdortgen_Ornek4()
    }
}
