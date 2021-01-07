//
//  Ornek1.swift
//  Day57-ForegroundColor
//
//  Created by yunus olgun on 7.01.2021.
//

import SwiftUI

struct Ornek1: View {
    var body: some View {
        VStack(spacing:20) {
            Text("ForegroundColor Örnek -1").font(.largeTitle)
            
            HStack {
                Button(action: {}){
                    Text("Button").padding()
                }.foregroundColor(.red)
                
                Button(action: {}){
                    Text("Button").padding()
                }.background(RoundedRectangle(cornerRadius: 20).foregroundColor(.red))
                
                
                Button(action: {}){
                    Text("Button").padding()
                }.background(RoundedRectangle(cornerRadius: 20)).foregroundColor(.red)
                
                Button(action: {}){
                    Text("Button").padding()
                }.background(RoundedRectangle(cornerRadius: 20).foregroundColor(.red)).foregroundColor(.white)
                
            }
            
            
            Text("Merhaba").font(.largeTitle).foregroundColor(.green)
            
            Rectangle().foregroundColor(.green).frame(width: 100, height: 100)
            
            Image(systemName: "eyedropper.full").font(.largeTitle).foregroundColor(.green)
            
            Text("Image nesnelerinin rengi değiştirilemez")
            Image("manzara").foregroundColor(.green)
            Image("manzara").opacity(0.2).overlay(Text("Manzara çok güzel").foregroundColor(.green).font(.largeTitle))
            
            
        }
    }
}

struct Ornek1_Previews: PreviewProvider {
    static var previews: some View {
        Ornek1()
    }
}
