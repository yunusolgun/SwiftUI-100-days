//
//  Ornek1.swift
//  Day62-Opacity
//
//  Created by yunus olgun on 8.01.2021.
//

import SwiftUI

struct Ornek1: View {
    @State private var opacityDeger = 0.4
    var body: some View {
        VStack(spacing:20) {
            Text("Opacity Örnek - 1").font(.largeTitle)
            Text("Giriş").foregroundColor(.gray)
            Text("Opacity değerini azaltarak, transpanlığı arttırabilirsiniz").frame(maxWidth:.infinity).padding().background(Color.purple).foregroundColor(.white)
            
            HStack {
                Color.purple.frame(width:60,height: 60).opacity(1).overlay(Text("1"))
                Color.purple.frame(width:60,height: 60).opacity(0.8).overlay(Text("0.8"))
                Color.purple.frame(width:60,height: 60).opacity(0.6).overlay(Text("0.6"))
                Color.purple.frame(width:60,height: 60).opacity(0.4).overlay(Text("0.4"))
                Color.purple.frame(width:60,height: 60).opacity(0.2).overlay(Text("0.2"))
                Color.purple.frame(width:60,height: 60).opacity(0).overlay(Text("0"))
            }.foregroundColor(.white)
            
            HStack {
                Circle().fill(Color.blue).frame(width:60,height: 60).overlay(Text("1")).opacity(1)
                Circle().fill(Color.blue).frame(width:60,height: 60).overlay(Text("0.8")).opacity(0.8)
                Circle().fill(Color.blue).frame(width:60,height: 60).overlay(Text("0.6")).opacity(0.6)
                Circle().fill(Color.blue).frame(width:60,height: 60).overlay(Text("0.4")).opacity(0.4)
                Circle().fill(Color.blue).frame(width:60,height: 60).overlay(Text("0.2")).opacity(0.2)
                Circle().fill(Color.blue).frame(width:60,height: 60).overlay(Text("0")).opacity(0)
            }
            
            Image("manzara").opacity(opacityDeger).overlay(Text("\(String(format: "%.2f", opacityDeger))"), alignment: .top)
            
            HStack {
                Text("Opacity değeri: ").font(.footnote)
                Slider(value: $opacityDeger, in: 0...1, step: 0.05).padding(.horizontal)
            }
            
        }.font(.title)
    }
}

struct Ornek1_Previews: PreviewProvider {
    static var previews: some View {
        Ornek1()
    }
}
