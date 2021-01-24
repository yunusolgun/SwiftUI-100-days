//
//  Ornek9_LongPressGesture.swift
//  Day89-AnimasyonTetikliyicileri
//
//  Created by yunus olgun on 24.01.2021.
//

import SwiftUI

struct Ornek9_LongPressGesture: View {
    @State private var isLongPress = false
    
    var body: some View {
        VStack(spacing:20) {
            Text("Trigger").font(.largeTitle)
            Text("Long Press Gesture").foregroundColor(.gray)
            Spacer()
            Circle().fill(isLongPress ? Color.blue : Color.green)
                .frame(width: 200, height: 200)
                .overlay(Text("Uzun Bas"))
                .overlay(Circle().stroke(Color.black, lineWidth: 5).scaleEffect(isLongPress ? 3 : 1).opacity(isLongPress ? 0 : 1))
                .onLongPressGesture {
                    self.isLongPress.toggle()
                }
                .animation(.default)
            Spacer()
            
            
        }.font(.title)
    }
}

struct Ornek9_LongPressGesture_Previews: PreviewProvider {
    static var previews: some View {
        Ornek9_LongPressGesture()
    }
}
