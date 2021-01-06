//
//  Ornek1.swift
//  Day51-Clipped
//
//  Created by yunus olgun on 6.01.2021.
//

import SwiftUI

struct Ornek1: View {
    var body: some View {
        VStack(spacing:20) {
            Text("Clipped Örnek - 1").font(.largeTitle)
            Text("Content Kırpma").font(.title).foregroundColor(.gray)
            
            HStack {
                VStack {
                    Text("Önceki")
                    Circle().fill(Color.orange).frame(width:150,height: 80).offset(x: 20, y: 20)
                }
                VStack {
                    Text("Sonraki")
                    Circle().fill(Color.orange).frame(width:150,height: 80).offset(x: 20, y: 20).border(Color.red,width: 3).clipped()
                }
            }
            
            HStack {
                Image("manzara").resizable().scaledToFill().frame(width:150, height: 120).padding(.trailing,60)
                Image("manzara").resizable().scaledToFill().frame(width:150, height: 120).clipped()
            }
            
            
        }
    }
}

struct Ornek1_Previews: PreviewProvider {
    static var previews: some View {
        Ornek1()
    }
}
