//
//  Inset_Ornek1.swift
//  Day22-Inset
//
//  Created by yunus olgun on 2.01.2021.
//

import SwiftUI

struct Inset_Ornek1: View {
    @State private var miktarInset: CGFloat = 45
    
    var body: some View {
        VStack(spacing:20) {
            Text("Inset Örnek - 1").font(.largeTitle)
            Text("Inset 20")
            Circle().inset(by: 20).frame(width:200).border(Color.purple)
            
            Circle().padding(20).frame(width:200).border(Color.purple)
            
            Rectangle().inset(by: miktarInset).fill(Color.purple).frame(width:300,height: 200).border(Color.purple)
            
            HStack {
                Text("0")
                Slider(value: $miktarInset, in: 0...95)
                Text("95")
            }.padding()
        }
    }
}

struct Inset_Ornek1_Previews: PreviewProvider {
    static var previews: some View {
        Inset_Ornek1()
    }
}
