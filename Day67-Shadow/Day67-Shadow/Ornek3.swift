//
//  Ornek3.swift
//  Day67-Shadow
//
//  Created by yunus olgun on 11.01.2021.
//

import SwiftUI

struct Ornek3: View {
    var body: some View {
        VStack(spacing:20) {
            Text("Shadow Örnek - 3").font(.largeTitle)
            Group {
                Capsule().foregroundColor(.blue).shadow(color: Color.red, radius: 10).overlay(Text("Sadece şekile gölge").foregroundColor(.white))
                
                Capsule().foregroundColor(.blue).overlay(Text("Yazı ve şekile gölge").foregroundColor(.white)).shadow(color: Color.red, radius: 10)
                
            }.padding().font(.title)
        }
    }
}

struct Ornek3_Previews: PreviewProvider {
    static var previews: some View {
        Ornek3()
    }
}
