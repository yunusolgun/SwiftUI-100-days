//
//  Dikdortgen_Ornek2.swift
//  DikdortgenselSekiller
//
//  Created by yunus olgun on 1.01.2021.
//

import SwiftUI

struct Dikdortgen_Ornek2: View {
    var body: some View {
        VStack(spacing:20) {
            Text("Rectangular Örnek - 2").font(.largeTitle)
            Rectangle().stroke(Color.red).padding()
            
            RoundedRectangle(cornerRadius: 30).stroke(Color.blue,lineWidth: 20).padding()
            
            RoundedRectangle(cornerRadius: 25)
                .stroke(Color.blue,style: StrokeStyle(lineWidth:10,lineCap: .round,dash: [15,25]))
                .padding()
        }
    }
}

struct Dikdortgen_Ornek2_Previews: PreviewProvider {
    static var previews: some View {
        Dikdortgen_Ornek2()
    }
}
