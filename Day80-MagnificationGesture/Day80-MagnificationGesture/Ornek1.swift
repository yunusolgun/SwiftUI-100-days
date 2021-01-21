//
//  Ornek1.swift
//  Day80-MagnificationGesture
//
//  Created by yunus olgun on 21.01.2021.
//

import SwiftUI

struct Ornek1: View {
    @State var olcek: CGFloat = 1.0
    
    var body: some View {
        VStack(spacing:20) {
            Text("MagnificationGesture Örnek-1").font(.title)
            Text("Zoom yapın").font(.title)
            Spacer()
            Image("manzara")
                .resizable()
                .frame(width:200,height:200)
                .scaleEffect(olcek)
                .gesture(MagnificationGesture().onChanged({ deger in
                    self.olcek = deger
                }))
            Spacer()
            Text("Magnification: ") + Text("\(olcek)").foregroundColor(.red).bold()
        }
    }
}

struct Ornek1_Previews: PreviewProvider {
    static var previews: some View {
        Ornek1()
    }
}
