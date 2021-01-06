//
//  Ornek1.swift
//  Day50-Brightness
//
//  Created by yunus olgun on 6.01.2021.
//

import SwiftUI

struct Ornek1: View {
    var body: some View {
        VStack(spacing:20) {
            Text("Brightness Örnek - 1").font(.largeTitle)
            Text("Giriş").font(.title).foregroundColor(.gray)
            
            HStack {
                Color.red.frame(width:50,height:50).brightness(0).overlay(Text("%0"))
                Color.red.frame(width:50,height:50).brightness(0.2).overlay(Text("%20"))
                Color.red.frame(width:50,height:50).brightness(0.4).overlay(Text("%40"))
                Color.red.frame(width:50,height:50).brightness(0.6).overlay(Text("%60"))
                Color.red.frame(width:50,height:50).brightness(0.8).overlay(Text("%80"))
                Color.red.frame(width:50,height:50).brightness(1).overlay(Text("%100"))
            }
            
            HStack{
                Image("manzara").resizable().frame(width:100,height:50).brightness(0.25).overlay(Text("%25"))
                Image("manzara").resizable().frame(width:100,height:50).brightness(0.5).overlay(Text("%50"))
                Image("manzara").resizable().frame(width:100,height:50).brightness(0.75).overlay(Text("%75"))
            }
            
            
            HStack{
                Image("manzara").resizable().frame(width:100,height:50).brightness(-0.1).overlay(Text("-%10"))
                Image("manzara").resizable().frame(width:100,height:50).brightness(-0.3).overlay(Text("-%30"))
                Image("manzara").resizable().frame(width:100,height:50).brightness(-0.5).overlay(Text("-%50"))
            }.foregroundColor(.white)
            
            
        }
    }
}

struct Ornek1_Previews: PreviewProvider {
    static var previews: some View {
        Ornek1()
    }
}
