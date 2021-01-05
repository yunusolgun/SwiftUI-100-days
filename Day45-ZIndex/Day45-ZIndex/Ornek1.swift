//
//  Ornek1.swift
//  Day45-ZIndex
//
//  Created by yunus olgun on 5.01.2021.
//

import SwiftUI

struct Ornek1: View {
    var body: some View {
        VStack(spacing:20){
            Text("Z Index Örnek - 1").font(.largeTitle)
            Text("Giriş").foregroundColor(.gray)
            Text("ZIndex değeriyle oynayarak bir view'i diğerlerinin önünde veya arkasında gösterebilirsiniz").frame(maxWidth:.infinity).padding().background(Color.blue).foregroundColor(.white)
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.red)
                .padding(.horizontal,50)
                .overlay(
                    Text("Şekil - 1")
                )
                .zIndex(1)
            
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.green)
                .padding(.horizontal,50)
                .overlay(
                    Text("Şekil - 2")
                )
                .scaleEffect(1.5)
                
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.purple)
                .padding(.horizontal,60)
                .overlay(
                    Text("Şekil - 3")
                )
                
            
            
        }.font(.title)
    }
}

struct Ornek1_Previews: PreviewProvider {
    static var previews: some View {
        Ornek1()
    }
}
