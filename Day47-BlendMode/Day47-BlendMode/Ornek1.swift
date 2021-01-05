//
//  Ornek1.swift
//  Day47-BlendMode
//
//  Created by yunus olgun on 5.01.2021.
//

import SwiftUI

struct MaviDiktortgen: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 15).foregroundColor(.blue).frame(width:100,height: 100).shadow(radius: 5).overlay(Text("Arkadaki Katman").foregroundColor(.white))
    }
}

struct SariDiktortgen: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 15).foregroundColor(.yellow).frame(width:100,height: 100)
    }
}


struct Ornek1: View {
    var body: some View {
        VStack(spacing:20) {
            Text("Blend Mode Örnek - 1").font(.largeTitle)
            Text("Giriş").font(.title).foregroundColor(.gray)
            
            Text("Blend Mode: Kapalı").font(.title)
            HStack(spacing:60){
                ZStack{
                    MaviDiktortgen()
                    SariDiktortgen().offset(x: 20, y: 20)
                }
                
                ZStack{
                    Image("swiftui").resizable().frame(width: 100, height: 100)
                    SariDiktortgen().offset(x: 20, y: 20)
                }
            }.padding(.bottom,40)
            
            
            Text("Blend Mode: colorBurn").font(.title)
            HStack(spacing:60){
                ZStack{
                    MaviDiktortgen()
                    SariDiktortgen().offset(x: 20, y: 20).blendMode(.colorBurn)
                }
                
                ZStack{
                    Image("swiftui").resizable().frame(width: 100, height: 100)
                    SariDiktortgen().offset(x: 20, y: 20).blendMode(.colorBurn)
                }
            }.padding(.bottom,40)
            
            
            ZStack {
                MaviDiktortgen()
                SariDiktortgen().offset(x: 30, y: 30).blendMode(.screen)
            }
            
            
            
        }
    }
}

struct Ornek1_Previews: PreviewProvider {
    static var previews: some View {
        Ornek1()
    }
}
