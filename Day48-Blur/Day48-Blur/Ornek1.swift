//
//  Ornek1.swift
//  Day48-Blur
//
//  Created by yunus olgun on 5.01.2021.
//

import SwiftUI

struct Ornek1: View {
    var body: some View {
        VStack(spacing:20) {
            Text("Blur Örnek - 1").font(.largeTitle)
            Text("Giriş").font(.title).foregroundColor(.gray)
            
            HStack {
                Image("swiftui").resizable().frame(width:100, height:100)
                    .blur(radius: 1).overlay(Text("1").bold().foregroundColor(.white))
                Image("swiftui").resizable().frame(width:100, height:100)
                    .blur(radius: 10).overlay(Text("10").bold().foregroundColor(.white))
                Image("swiftui").resizable().frame(width:100, height:100)
                    .blur(radius: 30).overlay(Text("30").bold().foregroundColor(.white))
            }
            
            HStack {
                Image("swiftui").resizable().frame(width:100, height:100)
                    .overlay(Color.red.blur(radius: 40))
                    .overlay(Color.yellow.blur(radius: 70))
                
                Color.orange.frame(width:100,height:100).blur(radius: 40)
                    .overlay(Text("40").bold().foregroundColor(.white))
                
                Image("swiftui").resizable().frame(width:100, height:100)
                    .blur(radius: 30,opaque: true)
                
                
            }
            
            
        }
    }
}

struct Ornek1_Previews: PreviewProvider {
    static var previews: some View {
        Ornek1()
    }
}
