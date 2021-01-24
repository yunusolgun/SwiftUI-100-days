//
//  Ornek8_DragGesture.swift
//  Day89-AnimasyonTetikliyicileri
//
//  Created by yunus olgun on 24.01.2021.
//

import SwiftUI

struct Ornek8_DragGesture: View {
    @GestureState private var menuOffset = CGSize.zero
    @State private var currentMenuY : CGFloat = 0.0
    
    var body: some View {
        VStack(spacing:20) {
            Text("Triggers").font(.largeTitle)
            Text("Drag Gesture").foregroundColor(.gray)
            Spacer()
            
            VStack {
                Circle().fill(Color.green)
                    .frame(width: 100, height: 100)
                    .overlay(Image(systemName: "line.horizontal.3").foregroundColor(.white).offset(x: 0, y: -20))
                    .offset(x: 0, y: -50)
                
                HStack {
                    Spacer()
                }
                Spacer()
            }.frame(height:200)
            .background(RoundedRectangle(cornerRadius: 20).fill(Color.green))
            .offset(x: 0, y: currentMenuY + menuOffset.height)
            .gesture(
                DragGesture().updating($menuOffset, body: { (value, menuOffset, transaction) in
                    menuOffset = value.translation
                }).onEnded({ value in
                    if value.translation.height > 100 {
                        self.currentMenuY = 200
                    } else {
                        self.currentMenuY = 0
                    }
                })
            ).animation(.default)
            
        }.font(.title)
    }
}

struct Ornek8_DragGesture_Previews: PreviewProvider {
    static var previews: some View {
        Ornek8_DragGesture()
    }
}
