//
//  Ornek2.swift
//  Day82-TapGesture
//
//  Created by yunus olgun on 21.01.2021.
//

import SwiftUI

struct Ornek2: View {
    @State private var ciftTiklama = false
    var body: some View {
        VStack(spacing:20) {
            Text("TapGesture Ornek-2").font(.largeTitle)
            Rectangle().foregroundColor(.purple)
                .cornerRadius(40)
                .scaleEffect(ciftTiklama ? 1.2 : 1)
                .frame(width:200, height:200, alignment: .center)
                .gesture(TapGesture(count: 2).onEnded({ _ in
                    self.ciftTiklama.toggle()
                }))
                .overlay(Text(ciftTiklama ? "Büyük ölçek": "Orjianal"))
                .foregroundColor(.white).font(.title)
                
        }
    }
}

struct Ornek2_Previews: PreviewProvider {
    static var previews: some View {
        Ornek2()
    }
}
