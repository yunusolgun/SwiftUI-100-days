//
//  Ornek1.swift
//  Day58-GrayScale
//
//  Created by yunus olgun on 7.01.2021.
//

import SwiftUI

struct Ornek1: View {
    private var dereceler = [-2, -0.5,0,0.8,10,20,35,50]
    private var renkler:[Color] = [.pink,.purple,.orange,.gray, .init(red: 180/255, green: 150/255, blue: 210/255)]
    var body: some View {
        VStack(spacing:20) {
            Text("GrayScale Örnek - 1").font(.largeTitle)
            
            HStack{
                Color.purple.frame(width: 150, height: 150).overlay(Text("Orjinal"))
                Color.purple.frame(width: 150, height: 150).grayscale(0).overlay(Text("0"))
                Color.purple.frame(width: 150, height: 150).grayscale(0.9).overlay(Text("0.9"))
                Color.purple.frame(width: 150, height: 150).grayscale(1).overlay(Text("1"))
                Color.purple.frame(width: 150, height: 150).grayscale(1.5).overlay(Text("1.5"))
                Color.purple.frame(width: 150, height: 150).grayscale(-2).overlay(Text("-2"))
            }.font(.title).foregroundColor(.white)
            
            ForEach(renkler, id:\.self) { renk in
                HStack {
                    renk.frame(width: 100, height: 100).overlay(Text("Orjinal"))
                    ForEach(self.dereceler, id:\.self) { derece in
                        renk.frame(width: 100, height: 100).grayscale(derece).overlay(Text("\(String(derece))"))
                    }
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
