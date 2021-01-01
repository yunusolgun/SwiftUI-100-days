//
//  Path_Ornek2.swift
//  Day20-Path
//
//  Created by yunus olgun on 1.01.2021.
//

import SwiftUI

struct Path_Ornek2: View {
    var body: some View {
        VStack(spacing:10) {
            Text("Path Örnek - 2").font(.largeTitle)
            
            GeometryReader { gr in
                Path { path in
                    let ortaX = gr.frame(in: .local).midX
                    let genislik: CGFloat = 200
                    
                    path.move(to: CGPoint(x: ortaX, y: 10))
                    path.addLine(to: CGPoint(x: ortaX + (genislik/2), y: 170))
                    path.addLine(to: CGPoint(x: ortaX - (genislik/2), y: 170))
                    path.addLine(to: CGPoint(x: ortaX, y: 10))
                    
                }.strokedPath(StrokeStyle(lineWidth:4)).foregroundColor(.red)
            }
            
            
            GeometryReader { gr in
                Path { path in
                    let ortaX = gr.frame(in: .local).midX
                    let genislik: CGFloat = 200
                    
                    path.move(to: CGPoint(x: ortaX, y: 10))
                    path.addLine(to: CGPoint(x: ortaX + (genislik/2), y: 170))
                    path.addLine(to: CGPoint(x: ortaX - (genislik/2), y: 170))
                    path.addLine(to: CGPoint(x: ortaX, y: 10))
                    
                }.fill(Color.blue).rotationEffect(Angle.degrees(90))
            }
            
        }
    }
}

struct Path_Ornek2_Previews: PreviewProvider {
    static var previews: some View {
        Path_Ornek2()
    }
}
