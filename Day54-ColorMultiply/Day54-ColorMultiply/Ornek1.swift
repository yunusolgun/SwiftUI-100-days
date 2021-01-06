//
//  Ornek1.swift
//  Day54-ColorMultiply
//
//  Created by yunus olgun on 6.01.2021.
//

import SwiftUI

struct Ornek1: View {
    var body: some View {
        VStack(spacing:20) {
            Text("Color Multiply Örnek - 1").font(.largeTitle)
            
            HStack {
                Color.blue
                Color.yellow.offset(x: -80, y: 0).blendMode(.colorBurn)
            }
            
            HStack {
                Color.blue
                Image(systemName: "plus")
                Color.yellow
                Image(systemName: "equal")
                Color.blue.colorMultiply(.yellow)
            }
            
            HStack {
                Spacer()
                Image("manzara").resizable().frame(width:150)
                Color.yellow.frame(width:150).offset(x: -150, y: 0).blendMode(.colorBurn)
            }.padding(.horizontal)
            
            HStack {
                Spacer()
                Image("manzara").resizable().frame(width:80)
                Image(systemName: "plus")
                Color.yellow
                Image(systemName: "equal")
                Image("manzara").resizable().frame(width:80).colorMultiply(.yellow)
            }.padding(.horizontal)
            
        }.font(.title).padding(.horizontal)
    }
}

struct Ornek1_Previews: PreviewProvider {
    static var previews: some View {
        Ornek1()
    }
}
