//
//  Ornek1.swift
//  Day67-Shadow
//
//  Created by yunus olgun on 11.01.2021.
//

import SwiftUI

struct Ornek1: View {
    var body: some View {
        VStack(spacing:20) {
            Text("Shadow Örnek - 1").font(.largeTitle).foregroundColor(.red)
            Group {
                Color.blue.frame(width:300, height:75).shadow(radius: 1).overlay(Text("Yarıçap:1"))
                Color.blue.frame(width:300, height:75).shadow(radius: 8).overlay(Text("Yarıçap:8"))
                Color.blue.frame(width:300, height:75).shadow(radius: 20).overlay(Text("Yarıçap:20"))
                Color.blue.frame(width:300, height:75).shadow(radius: 40).overlay(Text("Yarıçap:40"))
                
            }.foregroundColor(.white)
            
            Text("Merhaba").font(.largeTitle).foregroundColor(.pink).shadow(color: .black, radius: 10)
            
            Group {
                Circle().foregroundColor(.blue)
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Button")
                }).padding()
                Image("manzara")
                Image(systemName: "paintbrush.fill").font(.system(size:50)).foregroundColor(.blue)
            }.shadow(color: .red, radius: 10)
            
            
        }.font(.title)
        
        
    }
}

struct Ornek1_Previews: PreviewProvider {
    static var previews: some View {
        Ornek1()
    }
}
