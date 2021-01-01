//
//  Path_Ornek1.swift
//  Day20-Path
//
//  Created by yunus olgun on 1.01.2021.
//

import SwiftUI

struct Path_Ornek1: View {
    var body: some View {
        VStack(spacing:10) {
            Text("Path Örnek - 1").font(.largeTitle)
            Text("Herhangi bir görünüm düzenlemesi yapmadan path nesnesini göremezsiniz")
            
            Path { path in
                path.move(to: CGPoint(x: 10, y: 10))
                path.addLine(to: CGPoint(x: 200, y: 10))
            }.strokedPath(StrokeStyle(lineWidth:3))
            .foregroundColor(.red)
            
            DividerV2(cizgiKalinligi: 5, renk: .purple)
            
            
        }
    }
}


struct DividerV2: View {
    var cizgiKalinligi: CGFloat = 1
    var renk: Color = Color.secondary
    var body: some View {
        GeometryReader { gr in
            Path { path in
                path.move(to: CGPoint(x: 10, y: 10))
                path.addLine(to: CGPoint(x: gr.size.width - 10, y: 10))
            }.strokedPath(StrokeStyle(lineWidth:self.cizgiKalinligi, lineCap: .round))
            .foregroundColor(self.renk)
        }
    }
}

struct Path_Ornek1_Previews: PreviewProvider {
    static var previews: some View {
        Path_Ornek1()
    }
}
