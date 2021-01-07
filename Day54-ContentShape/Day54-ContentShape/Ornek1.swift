//
//  Ornek1.swift
//  Day54-ContentShape
//
//  Created by yunus olgun on 7.01.2021.
//

import SwiftUI

struct Ornek1: View {
    @State private var begeniSayisi = 0
    var body: some View {
        VStack(spacing:20) {
            Text("ContentShape Örnek - 1").font(.largeTitle)
            
            VStack(spacing:20) {
                Image(systemName: begeniSayisi > 0 ? "heart.fill" : "heart")
                    .foregroundColor(begeniSayisi>0 ? .red : .gray)
                    .frame(width: 100, height: 100)
                Text("Beğen! (Beğeni: \(begeniSayisi))")
            }.padding().background(RoundedRectangle(cornerRadius: 20).stroke(Color.red,lineWidth: 2))
            .contentShape(RoundedRectangle(cornerRadius: 20))
            .onTapGesture {
                self.begeniSayisi = self.begeniSayisi + 1
            }
        }
    }
}

struct Ornek1_Previews: PreviewProvider {
    static var previews: some View {
        Ornek1()
    }
}
