//
//  Ornek2.swift
//  Day81-RotationGesture
//
//  Created by yunus olgun on 21.01.2021.
//

import SwiftUI

struct Ornek2: View {
    @State var rotation: Angle = .zero
    @State var color = Color.red
    
    var body: some View {
        VStack(spacing:20) {
            Text("RotationGesture Örnek-2").font(.largeTitle)
            Rectangle().foregroundColor(color).cornerRadius(40)
                .shadow(radius: 10)
                .animation(.default)
                .rotationEffect(rotation)
                .frame(width: 200, height: 200, alignment: .center)
                .gesture(RotationGesture().onChanged({ value in
                    self.rotation = value
                    self.color = .orange
                }).onEnded({ _ in
                    self.color = .red
                }))
        }
    }
}

struct Ornek2_Previews: PreviewProvider {
    static var previews: some View {
        Ornek2()
    }
}
