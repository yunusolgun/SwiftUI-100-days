//
//  Ornek2.swift
//  Day52-ClipShape
//
//  Created by yunus olgun on 6.01.2021.
//

import SwiftUI

struct MaskveView1: View {
    var body: some View {
        Image(systemName: "heart.circle.fill").frame(width:200, height: 200,alignment: .center).font(.system(size:70)).foregroundColor(.white)
    }
}

struct MaskveView2: View {
    var body: some View {
        Image(systemName: "sparkles").frame(minWidth: 0, maxWidth: .infinity, minHeight: 0,  maxHeight: .infinity).font(.system(size: 70)).foregroundColor(.white).background(Color.orange)
    }
}

struct Ornek2: View {
    var body: some View {
        VStack(spacing:20) {
            Text("ClipShape Örnek - 2").font(.largeTitle)
            MaskveView1().background(Color.orange)
                .frame(width:200, height:200, alignment: .center).clipShape(Rectangle()).overlay(Rectangle().stroke(Color.pink,lineWidth: 10))
            
            MaskveView2().frame(width: 200, height: 200).clipShape(RoundedRectangle(cornerRadius: 20)).overlay(Text("Hayaller").font(.headline).offset(x: 0, y: -15).foregroundColor(.white), alignment: .bottom).shadow(color: Color.black.opacity(0.7), radius: 10, x: 3, y: 5)
        }
    }
}

struct Ornek2_Previews: PreviewProvider {
    static var previews: some View {
        Ornek2()
    }
}
