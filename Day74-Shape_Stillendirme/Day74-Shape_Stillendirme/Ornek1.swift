//
//  Ornek1.swift
//  Day74-Shape_Stillendirme
//
//  Created by yunus olgun on 14.01.2021.
//

import SwiftUI

struct Ornek1: View {
    var body: some View {
        VStack(spacing:20) {
            Text("ShapeModifier Örnek - 1").font(.largeTitle)
            Text("ViewModifier bir viewle kullanılabiliyor. Eğer shape nesenelerine de benzer düzenlemeler yapmak isterseniz, shape yapısına bir extension yazmanız gerekecek").frame(maxWidth:.infinity).font(.title).padding().background(Color.red).layoutPriority(2)
            
            Circle().outlineEkle(kenarlikKalinlik: 10)
            Capsule(style: .continuous).outlineEkle(kenarlikKalinlik: 20, trim: 0.5)
            RoundedRectangle(cornerRadius: 25).outlineEkle(kenarlikKalinlik: 20, trim: 0.8)
            
        }.padding(.vertical).background(Color.black.edgesIgnoringSafeArea(.vertical)).foregroundColor(.white)
    }
}

extension Shape {
    func outlineEkle(kenarlikKalinlik: CGFloat=1, trim: CGFloat = 1) -> some View {
        let linearGradient = LinearGradient(gradient: Gradient(colors: [Color.pink, Color.purple]), startPoint: .topLeading, endPoint: .bottomTrailing)
        return self.trim(from: 0, to: trim).stroke(linearGradient,style: StrokeStyle(lineWidth:kenarlikKalinlik, lineCap: .round))
            .padding(kenarlikKalinlik / 2 + 5)
    }
}

struct Ornek1_Previews: PreviewProvider {
    static var previews: some View {
        Ornek1()
    }
}
