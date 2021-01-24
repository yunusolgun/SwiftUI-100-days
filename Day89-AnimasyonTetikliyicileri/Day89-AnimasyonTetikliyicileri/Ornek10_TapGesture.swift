//
//  Ornek10_TapGesture.swift
//  Day89-AnimasyonTetikliyicileri
//
//  Created by yunus olgun on 24.01.2021.
//

import SwiftUI

struct Ornek10_TapGesture: View {
    @State private var isOn = false
    
    var body: some View {
        VStack(spacing:20) {
            Text("Trigger").font(.largeTitle)
            Text("Tap Gesture").foregroundColor(.gray)
            
            Text("Daire çift tıkla")
            Spacer()
            
            Circle()
                .fill(isOn ? Color.green : Color.red)
                .frame(width: 200, height: 200, alignment: .center)
                .overlay(Text("Açık").opacity(isOn ? 1 : 0))
                .overlay(Text("Kapalı").foregroundColor(.white).opacity(isOn ? 0 : 1))
                .onTapGesture(count: 2, perform: {
                    self.isOn.toggle()
                })
                .shadow(color: isOn ? .green : .red , radius: 50)
                .animation(.default)
            
            Spacer()
            
        }.font(.title)
    }
}

struct Ornek10_TapGesture_Previews: PreviewProvider {
    static var previews: some View {
        Ornek10_TapGesture()
    }
}
